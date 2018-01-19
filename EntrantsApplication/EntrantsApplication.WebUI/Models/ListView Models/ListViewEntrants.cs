using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
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
    }
}