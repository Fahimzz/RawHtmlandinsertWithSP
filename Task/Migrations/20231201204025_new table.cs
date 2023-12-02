using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Task.Migrations
{
    /// <inheritdoc />
    public partial class newtable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Meeting_Minutes_Master_Tbls",
                columns: table => new
                {
                    id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CustomerId = table.Column<long>(type: "bigint", nullable: false),
                    MeetingDate = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MeetingTime = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    AttendesFromClient = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    AttendesFromHost = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MeetingAgenda = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MeetingDecision = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MeetingDiscussion = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    createAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    updateAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    isDelete = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Meeting_Minutes_Master_Tbls", x => x.id);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Meeting_Minutes_Master_Tbls");
        }
    }
}
