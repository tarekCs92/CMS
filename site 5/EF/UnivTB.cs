//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EF
{
    using System;
    using System.Collections.Generic;
    
    public partial class UnivTB
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public UnivTB()
        {
            this.SpecTBs = new HashSet<SpecTB>();
        }
    
        public int Id { get; set; }
        public string EnTitle { get; set; }
        public string ArTitle { get; set; }
        public Nullable<int> CountryId { get; set; }
        public string Image { get; set; }
    
        public virtual CountryTB CountryTB { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SpecTB> SpecTBs { get; set; }
    }
}
