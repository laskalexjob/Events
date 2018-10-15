﻿using System.Configuration;

namespace AL.Events.DAL
{
    public static class DbConstant
    {
        public const string FolderName = "defaultFolderForProject";
        public const string conStrName = "DefaultConnection";
        public static string connectionString = ConfigurationManager.ConnectionStrings[conStrName].ConnectionString;
        public const string configFileName = "AL.Events.DAL.Connections.config";

        public static class Command
        {
            public const string SaveCategory = "SaveCategory";
            public const string DeleteCategoryByCategoryId = "DeleteCategoryByCategoryId";
            public const string GetCategoriesList = "GetCategoriesList";
            public const string GetCategoryByCategoryId = "GetCategoryByCategoryId";
            public const string CreateCategory = "CreateCategory";
            public const string UpdateCategory = "UpdateCategory";
            public const string CreateEvent = "CreateEvent";
            public const string GetEventsList = "GetEventsList";
            public const string GetOrganizersList = "GetOrganizersList";
            public const string CreateOrganizer = "CreateOrganizer";
            public const string DeleteOrganizerByOrganizerId = "DeleteOrganizerByOrganizerId";
            public const string GetOrganizerByOrganizerId = "GetOrganizerByOrganizerId";
            public const string UpdateOrganizer = "UpdateOrganizer";
            public const string DeleteEventByEventId = "DeleteEventByEventId";
            public const string GetEventByEventId = "GetEventByEventId";
            public const string UpdateEvent = "UpdateEvent";
        }

        public static class Image
        {
            public const string DefaultImagePath = "picture_default.jpg";
        }
    }
}
