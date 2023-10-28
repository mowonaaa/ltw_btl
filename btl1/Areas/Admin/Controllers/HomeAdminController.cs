using btl1.Models;
using Microsoft.AspNetCore.Mvc;

namespace btl1.Areas.Admin.Controllers
{
    [Area("admin")]
    [Route("admin")]
    [Route("admin/homeadmin")]
    public class HomeAdminController : Controller
    {
        QlbanKhanContext db=new QlbanKhanContext();
        [Route("")]
        [Route("index")]
        public IActionResult Index()
        {
            return View();
        }
        [Route("danhmucsanpham")]
        public IActionResult DanhMucSanPham()
        {
            var lstSanPham=db.Sanphams.ToList();
            return View(lstSanPham);
        }
    }
}
