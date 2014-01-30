using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;

namespace PronoProject.Models
{
    public class PronosticModel
    {
        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Score 1")]
        public double Score_opp_1 { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Score 2")]
        public double Score_opp_2 { get; set; }

        [Required]
        [Display(Name = "Match")]
        public Games game { get; set; }

    

    }
}