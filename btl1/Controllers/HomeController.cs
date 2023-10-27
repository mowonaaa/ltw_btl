﻿using btl1.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace btl1.Controllers
{
    public class HomeController : Controller
    {
        QlbanKhanContext db = new QlbanKhanContext();
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            var lstsanpham = db.Sanphams.ToList();
            return View(lstsanpham);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}