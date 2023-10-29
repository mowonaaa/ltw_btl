﻿using btl1.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using X.PagedList;

namespace btl1.Controllers
{
    public class StoreController : Controller
    {
		QlbanKhanContext db = new QlbanKhanContext();
		public IActionResult Index(int? page)
        {
			int pageSize = 6;
			int pageNumber = page == null || page < 0 ? 1 : page.Value;
			var lstsanpham = db.Sanphams.AsNoTracking().OrderBy(x => x.Tensp);
			PagedList<Sanpham> lst = new PagedList<Sanpham>(lstsanpham, pageNumber, pageSize);
			return View(lst);
		}
    }
}
