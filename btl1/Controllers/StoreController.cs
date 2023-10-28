using btl1.Models;
using Microsoft.AspNetCore.Mvc;

namespace btl1.Controllers
{
    public class StoreController : Controller
    {
		QlbanKhanContext db = new QlbanKhanContext();
		public IActionResult Index()
        {
			var lstsanpham = db.Sanphams.ToList();
			return View(lstsanpham);
		}
    }
}
