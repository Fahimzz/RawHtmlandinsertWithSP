﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Task.DBContext;

#nullable disable

namespace Task.Migrations
{
    [DbContext(typeof(TaskDbContext))]
    [Migration("20231201204025_new table")]
    partial class newtable
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "7.0.4")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("Task.DBContext.Model.Corporate_Customer_Tbl", b =>
                {
                    b.Property<long>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("id"));

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("createAt")
                        .HasColumnType("datetime2");

                    b.Property<bool>("isDelete")
                        .HasColumnType("bit");

                    b.Property<DateTime?>("updateAt")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("Corporate_Customer_Tbl");
                });

            modelBuilder.Entity("Task.DBContext.Model.Individual_Customer_Tbl", b =>
                {
                    b.Property<long>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("id"));

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("createAt")
                        .HasColumnType("datetime2");

                    b.Property<bool>("isDelete")
                        .HasColumnType("bit");

                    b.Property<DateTime?>("updateAt")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("Individual_Customer_Tbl");
                });

            modelBuilder.Entity("Task.DBContext.Model.Meeting_Minutes_Master_Tbl", b =>
                {
                    b.Property<long>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("id"));

                    b.Property<string>("AttendesFromClient")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("AttendesFromHost")
                        .HasColumnType("nvarchar(max)");

                    b.Property<long>("CustomerId")
                        .HasColumnType("bigint");

                    b.Property<string>("MeetingAgenda")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("MeetingDate")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("MeetingDecision")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("MeetingDiscussion")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("MeetingTime")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("createAt")
                        .HasColumnType("datetime2");

                    b.Property<bool>("isDelete")
                        .HasColumnType("bit");

                    b.Property<DateTime?>("updateAt")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("Meeting_Minutes_Master_Tbls");
                });

            modelBuilder.Entity("Task.DBContext.Model.Products_Service_Tbl", b =>
                {
                    b.Property<long>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("id"));

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<long>("Quantities")
                        .HasColumnType("bigint");

                    b.Property<string>("Type")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Unit")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("createAt")
                        .HasColumnType("datetime2");

                    b.Property<bool>("isDelete")
                        .HasColumnType("bit");

                    b.Property<DateTime?>("updateAt")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("Products_Service_Tbls");
                });
#pragma warning restore 612, 618
        }
    }
}