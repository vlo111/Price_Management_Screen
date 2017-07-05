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

            bundles.Add(new ScriptBundle("~/Scripts/smartadmin").Include(
                "~/Scripts/app.config.js",
                "~/Scripts/plugins/jquery-touch/jquery.ui.touch-punch.min.js",
                "~/Scripts/bootstrap/bootstrap.min.js",
                "~/Scripts/notification/SmartNotification.min.js",
                "~/Scripts/smartwidgets/jarvis.widget.min.js",
                "~/Scripts/plugins/jquery-validate/jquery.validate.min.js",
                "~/Scripts/plugins/masked-input/jquery.maskedinput.min.js",
                "~/Scripts/plugins/select2/select2.min.js",
                "~/Scripts/plugins/bootstrap-slider/bootstrap-slider.min.js",
                "~/Scripts/plugins/bootstrap-progressbar/bootstrap-progressbar.min.js",
                "~/Scripts/plugins/msie-fix/jquery.mb.browser.min.js",
                "~/Scripts/plugins/fastclick/fastclick.min.js",
                "~/Scripts/app.min.js"));

            bundles.Add(new ScriptBundle("~/Scripts/datatables").Include(
                "~/Scripts/plugins/datatables/jquery.dataTables.min.js",
                "~/Scripts/plugins/datatables/dataTables.colVis.min.js",
                "~/Scripts/plugins/datatables/dataTables.tableTools.min.js",
                "~/Scripts/plugins/datatables/dataTables.bootstrap.min.js",
                "~/Scripts/plugins/datatable-responsive/datatables.responsive.min.js"
             ));

            bundles.Add(new ScriptBundle("~/Scripts/forms").Include(
                "~/Scripts/plugin/jquery-form/jquery-form.min.js"
                ));
            //BundleTable.EnableOptimizations = true;
        }
    }
}