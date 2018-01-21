using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using EntrantsApplication.Domain.Abstract;
using EntrantsApplication.Domain.Entities;

namespace EntrantsApplication.WebUI.Models.ListView_Models
{
    public class ListViewEntrants
    {
        public IEnumerable<Entrant> Entrants { get; set; }

        private IEnumerable<ListViewEntrant> _listViewEntrants;

        public IEnumerable<Speciality> Specialities { get; set; }        

        private void AddEntrants()
        {
            var listViewEntrants = new List<ListViewEntrant>();
            if (Entrants != null)
            {
                foreach (var entrant in Entrants)
                {
                    listViewEntrants.Add(new ListViewEntrant(entrant));
                }
                _listViewEntrants = listViewEntrants;
            }
        }

        public IEnumerable<ListViewEntrant> getListViewEntrants()
        {
            if (_listViewEntrants == null)
                AddEntrants();
            foreach (var entrant in _listViewEntrants)
            {
                yield return entrant;
            }
        }

        public IEnumerable<ListViewEntrant> getFilteredEntrants(string[] nodesNames, IEntrantsRepository entrantsRepository)
        {
            var listViewEntrants = new List<ListViewEntrant>();
            if (nodesNames != null)
                foreach (var nodeName in nodesNames)
                {
                    IEnumerable<Entrant> entrants;
                    if (nodeName == "Free" || nodeName == "Paid")
                    {
                        entrants = entrantsRepository.getEntrantsFromDatabaseByEducationFee(nodeName);
                    }
                    else if (nodeName.Contains("Faculty"))
                    {
                        entrants = entrantsRepository.getEntrantsFromDatabaseByFaculty(nodeName);
                    }
                    else
                    {
                        entrants = entrantsRepository.getEntrantsFromDatabaseBySpeciality(nodeName);                        
                    }
                    if (entrants != null)
                        foreach (var entrant in entrants)
                        {
                            //listViewEntrants.Add(entrant);
                            listViewEntrants.Add(new ListViewEntrant(entrant));
                        }
                }
            return listViewEntrants;
        }

        public void FindEntrantsInDatabase(string nodeName)
        {

        }
    }
}