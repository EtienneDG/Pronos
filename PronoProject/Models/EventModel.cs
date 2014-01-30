using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;

namespace PronoProject.Models
{
    
        public class MustBeGreaterThanAttribute : ValidationAttribute
        {
            private readonly string _otherProperty;

            public MustBeGreaterThanAttribute(string otherProperty, string errorMessage)
                : base(errorMessage)
            {
                _otherProperty = otherProperty;
            }

            protected override ValidationResult IsValid(object value, ValidationContext validationContext)
            {
                var otherProperty = validationContext.ObjectInstance.GetType().GetProperty(_otherProperty);
                var otherValue = otherProperty.GetValue(validationContext.ObjectInstance, null);
                var thisDateValue = Convert.ToDateTime(value);
                var otherDateValue = Convert.ToDateTime(otherValue);

                if (thisDateValue > otherDateValue)
                {
                    return ValidationResult.Success;
                }

                return new ValidationResult(FormatErrorMessage(validationContext.DisplayName));
            }
        }

    public  class EventsModel
    {
        public int EventId { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Nom évènement")]
        public string Name { get; set; }

       
        [DataType(DataType.Text)]
        [Display(Name = "Sport")]
        public List<SelectListItem> SportList { get; set; }

        public string SelectedSport { get; set; }
        
        [DataType(DataType.Date)]
        [Display(Name = "Date de début")]
        public DateTime StartDate { get; set; }

        [DataType(DataType.Date)]
        [Display(Name = "Date de fin")]
        [MustBeGreaterThan("StartDate", "La date de fin doit être supérieure à celle de début.")]
        public DateTime EndDate { get; set; }

        [DataType(DataType.Text)]
        [Display(Name = "Description")]
        public string Description { get; set; }

        [DataType(DataType.Text)]
        [Display(Name = "Matchs")]
        public IEnumerable<Games> GamesOfEvent { get; set; }

    }

   
}