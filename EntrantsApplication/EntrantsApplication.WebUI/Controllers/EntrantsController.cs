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
        List<ListViewEntrant> _listViewEntrants = null;

        public EntrantsController()
        {
            _entrantsRepository = new EFEntrantsRepository();
        }
        // GET: Entrants

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

        public ViewResult List(int? entrantId, Entrant deletedEntrant)
        {
            if (_listViewEntrants == null && (_entrantsRepository.Entrants.Count() != 0))
            {
                _listViewEntrants = new List<ListViewEntrant>();
                foreach (var entrant in _entrantsRepository.Entrants)
                {
                    _listViewEntrants.Add(new ListViewEntrant(entrant));
                }
            }
            if (deletedEntrant.Name != null)
            {
                _entrantsRepository.SaveEntrant(deletedEntrant);
                _listViewEntrants.Add(new ListViewEntrant(deletedEntrant));
            }
            else if (entrantId != null)
            {
                _listViewEntrants.FirstOrDefault(x => x.EntrantId == entrantId).
                    SelectedEntrant = true;
            }
            return View(_listViewEntrants);
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