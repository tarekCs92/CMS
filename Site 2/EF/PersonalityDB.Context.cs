﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class PersonalityDBEntities : DbContext
    {
        public PersonalityDBEntities()
            : base("name=PersonalityDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<C__MigrationHistory> C__MigrationHistory { get; set; }
        public virtual DbSet<AboutTB> AboutTBs { get; set; }
        public virtual DbSet<AspNetRole> AspNetRoles { get; set; }
        public virtual DbSet<AspNetUserClaim> AspNetUserClaims { get; set; }
        public virtual DbSet<AspNetUserLogin> AspNetUserLogins { get; set; }
        public virtual DbSet<AspNetUser> AspNetUsers { get; set; }
        public virtual DbSet<BlogTB> BlogTBs { get; set; }
        public virtual DbSet<ContactsTB> ContactsTBs { get; set; }
        public virtual DbSet<GallaryTB> GallaryTBs { get; set; }
        public virtual DbSet<IndexTB> IndexTBs { get; set; }
        public virtual DbSet<LayoutTB> LayoutTBs { get; set; }
        public virtual DbSet<MenusTB> MenusTBs { get; set; }
        public virtual DbSet<Service> Services { get; set; }
        public virtual DbSet<TestTB> TestTBs { get; set; }
    }
}
