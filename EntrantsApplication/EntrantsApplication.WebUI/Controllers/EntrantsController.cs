using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Services;
using System.Web.Services;
using EntrantsApplication.Domain.Abstract;
using EntrantsApplication.Domain.Concrete;
using EntrantsApplication.Domain.Entities;
using EntrantsApplication.WebUI.Models.ApplicationModels;
using EntrantsApplication.WebUI.Models.ListView_Models;

namespace EntrantsApplication.WebUI.Controllers
{
    public class EntrantsController : Controller
    {
        IEntrantsRepository _entrantsRepository;
        ListViewEntrants _listViewEntrants = null;
      
        public EntrantsController()
        {                        
            _entrantsRepository = new EFEntrantsRepository();
            _listViewEntrants = new ListViewEntrants() { Entrants = _entrantsRepository.Entrants,
                Specialities = _entrantsRepository.Specialities };
        }

        public ActionResult MainMenu()
        {
            return View();
        }

        [HttpGet]
        public ViewResult AddEntrant()
        {
            return View();
        }

        [HttpPost]
        public ViewResult AddEntrant(Entrant entrant)
        {
            if (ModelState.IsValid)
            {
                _entrantsRepository.SaveEntrant(entrant);
                return View("AddingEntrantInformation", entrant);
            }
            else
                return View();
        }

        [HttpGet]
        public ViewResult AddApplication()
        {
            return View();
        }

        [HttpPost]
        public ViewResult AddApplication(EntrantApplication application)
        {
            if (ModelState.IsValid)
            {
                _entrantsRepository.SaveApplication(application);
                return View("MainMenu");
            }
            else
                return View();          
        }
         
        public JsonResult GetUniversitiesInfo(EntrantSpeciality[] model)
        {           
            if (model != null)
            {
                return Json(_entrantsRepository.getUniversitiesFromDatabase(model), JsonRequestBehavior.AllowGet);
            }
            return Json(_entrantsRepository.getUniversitiesFromDatabase(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetEducationFormsInfo(string[] model)
        {
            if (model.Length >= 1)
            {
                if (model.Length == 1)
                    EFEntrantsRepository._currentEntrantsSpeciality = null;
                return Json(_entrantsRepository.getEducationFormsFromDatabase(model[0]), JsonRequestBehavior.AllowGet);
            }
            else
                return Json(null);
        }

        public JsonResult GetEducationPeriodsInfo(string[] model)
        {
            if (model.Length >= 2)
                return Json(_entrantsRepository.getEducationPeriodsFromDatabase(model), JsonRequestBehavior.AllowGet);
            else
                return Json(null);
        }

        public JsonResult GetEducationFeesInfo(string[] model)
        {
            if (model.Length >= 3)
                return Json(_entrantsRepository.getEducationFeesFromDatabase(model), JsonRequestBehavior.AllowGet);
            else
                return Json(null);
        }

        public JsonResult GetSpecialitiesInfo(string[] model)
        {
            if (model.Length >= 4)
                return Json(_entrantsRepository.getSpecialitiesFromDatabase(model), JsonRequestBehavior.AllowGet);
            else
                return Json(null);
        }

        public JsonResult GetGroupSpecialitiesInfo(string[] model)
        {
            if (model.Length >= 5)
            {
                if (model.Length == 5)
                    EFEntrantsRepository._currentEntrantsSpeciality = null;
                return Json(_entrantsRepository.getGroupSpecialities(model), JsonRequestBehavior.AllowGet);
            }
            else
                return Json(null);
        }

        public ViewResult WatchApplications()
        {
            var listApplications = new List<ListApplication>();
            var specialitiesDb = (new SpecialityDbContext()).Applications.ToArray();
            foreach (var application in specialitiesDb)
            {
                listApplications.Add(new ListApplication(application));
            }
            return View(listApplications);
        }
        
        [HttpGet]
        public ViewResult List(int? entrantId, Entrant deletedEntrant)
        {
            if (deletedEntrant.Name != null)
            {
                _entrantsRepository.SaveEntrant(deletedEntrant);
                return View(_listViewEntrants.getListViewEntrants());
            }
            else if (entrantId != null)
            {
                _listViewEntrants.getListViewEntrants().FirstOrDefault(x => x.EntrantId == entrantId).
                    SelectedEntrant = true;
            }
            return View(_listViewEntrants.getListViewEntrants());
        }

        [HttpPost]
        public JsonResult List(string[] model)
        {
            return Json(_listViewEntrants.getFilteredEntrants(model, _entrantsRepository), JsonRequestBehavior.AllowGet);
        }

        public ViewResult FullEntrantInformation(int entrantId)
        {
            var currentEntrant = _entrantsRepository.Entrants.FirstOrDefault(x => x.EntrantId == entrantId);
            return View(currentEntrant);
        }

        public ViewResult EditEntrant(int entrantId)
        {
            var currentEntrant = _entrantsRepository.Entrants.FirstOrDefault(x => x.EntrantId == entrantId);
            return View(currentEntrant);
        }

        public ViewResult EditEntrantInformation(Entrant entrant)
        {
            if (ModelState.IsValid)
            {
                _entrantsRepository.EditEntrant(entrant);
                return View("EdittingEntrantInformation", entrant);
            }
            else
                return View("EditEntrant", entrant);
        }

        public ViewResult DeleteEntrant(int entrantId)
        {
            var currentEntrant = _entrantsRepository.Entrants.FirstOrDefault(x => x.EntrantId == entrantId);
            _entrantsRepository.RemoveEntrant(currentEntrant);
            return View(currentEntrant);
        }
    }
}