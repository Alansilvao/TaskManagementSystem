
using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics.CodeAnalysis;

namespace Infra.Database.Context;

[ExcludeFromCodeCoverage]
public class ApplicationDbContext : DbContext
{
    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
        : base(options)
    {
    }

    public DbSet<User> Users { get; set; }
    public DbSet<Category> Categories { get; set; }
    public DbSet<Tasks> Tasks { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.Id);
            entity.Property(e => e.Name)
                  .IsRequired()
                  .HasMaxLength(100);
            entity.Property(e => e.Email)
                  .IsRequired()
                  .HasMaxLength(100);
            entity.Property(e => e.Password)
                  .IsRequired()
                  .HasMaxLength(100);
            entity.HasMany(e => e.Tasks)
                  .WithOne(e => e.User)
                  .HasForeignKey(e => e.UserId);
        });

        modelBuilder.Entity<Category>(entity =>
        {
            entity.HasKey(e => e.Id);
            entity.Property(e => e.Name)
                  .IsRequired()
                  .HasMaxLength(100);
            entity.HasMany(e => e.Tasks)
                  .WithOne(e => e.Category)
                  .HasForeignKey(e => e.CategoryId);
        });

        modelBuilder.Entity<Tasks>(entity =>
        {
            entity.HasKey(e => e.Id);
            entity.Property(e => e.Title)
                  .IsRequired()
                  .HasMaxLength(100);
            entity.Property(e => e.Description)
                  .HasMaxLength(1000);
            entity.Property(e => e.DueDate)
                  .IsRequired();
            entity.Property(e => e.IsCompleted)
                  .IsRequired();
            entity.HasOne(e => e.User)
                  .WithMany(e => e.Tasks)
                  .HasForeignKey(e => e.UserId);
            entity.HasOne(e => e.Category)
                  .WithMany(e => e.Tasks)
                  .HasForeignKey(e => e.CategoryId);
        });
    }
}