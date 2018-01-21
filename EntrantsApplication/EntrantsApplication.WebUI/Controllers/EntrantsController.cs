using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EntrantsApplication.Domain.Abstract;
using EntrantsApplication.Domain.Concrete;
using EntrantsApplication.Domain.Entities;
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

        //[HttpPost]
        //public ViewResult List(string[] model)
        //{
        //    _listViewEntrants.Entrants = _listViewEntrants.getFilteredEntrants(model, _entrantsRepository);          
        //    return View(_listViewEntrants);
        //}

        [HttpPost]
        public JsonResult List(string[] model)
        {
           // _listViewEntrants.Entrants = _listViewEntrants.getFilteredEntrants(model, _entrantsRepository);
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