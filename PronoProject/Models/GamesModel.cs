using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;

namespace PronoProject.Models
{

    public class GamesModel
    {
        public int GameId { get; set; }

        [DataType(DataType.Text)]
        [Display(Name = "Adversaire 1")]
        public string Opponent_1 { get; set; }

        [DataType(DataType.Text)]
        [Display(Name = "Adversaire 2")]
        public string Opponent_2 { get; set; }

        [DataType(DataType.Date)]
        [Display(Name = "Date de début")]
        public DateTime Date { get; set; }


        [DataType(DataType.Text)]
        [Display(Name = "Matchs")]
        public IEnumerable<Games> GamesOfEvent { get; set; }

        [DataType(DataType.Text)]
        [Display(Name = "Appartient à l'évènement")]
        public List<SelectListItem> EventsList { get; set; }

        public string SelectedEvent { get; set; }
    }
}