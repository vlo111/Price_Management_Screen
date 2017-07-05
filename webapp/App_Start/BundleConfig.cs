#region Using

using System.Web.Optimization;

#endregion

namespace CenDek
{
    public static class BundleConfig
    {
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new StyleBundle("~/content/smartadmin").Include(
                "~/Content/css/bootstrap.min.css",
                "~/Content/css/datatables.min.css",
                //"~/Content/css/font-awesome.min.css",
                "~/Content/css/lockscreen.min.css",
                "~/Content/css/smartadmin-production-plugins.min.css",
                "~/Content/css/smartadmin-production.min.css",
                "~/Content/css/smartadmin-rtl.min.css",
                "~/Content/css/smartadmin-skins.min.css",
                "~/Content/css/CenDek.css"));

            bundles.Add(new ScriptBundle("~/scripts/smartadmin").Include(
                "~/scripts/app.config.seed.js",
                "~/scripts/bootstrap/bootstrap.min.js",
                "~/scripts/app.seed.js"));

            bundles.Add(new ScriptBundle("~/scripts/datatables").Include(
                "~/scripts/plugins/datatables/jquery.dataTables.min.js",
                "~/scripts/plugins/datatables/dataTables.colVis.min.js",
                "~/scripts/plugins/datatables/dataTables.tableTools.min.js",
                "~/scripts/plugins/datatables/dataTables.bootstrap.min.js",
                "~/scripts/plugins/datatable-responsive/datatables.responsive.min.js"
             ));
            //BundleTable.EnableOptimizations = true;
        }
    }
}