﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace adonet.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class adonetEntities : DbContext
    {
        public adonetEntities()
            : base("name=adonetEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<kategori> kategoris { get; set; }
        public virtual DbSet<kullanici> kullanicis { get; set; }
        public virtual DbSet<slayt> slayts { get; set; }
        public virtual DbSet<urun> uruns { get; set; }
        public virtual DbSet<yorum> yorums { get; set; }
    }
}
