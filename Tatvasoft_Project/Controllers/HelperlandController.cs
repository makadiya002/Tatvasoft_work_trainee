using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Tatvasoft_Project.Controllers
{
    public class HelperlandController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public ViewResult Prices()
        {
            return View();
        }

        public ViewResult Contact()
        {
            return View();
        }

        public ViewResult FAQ()
        {
            return View();
        }

        public ViewResult About()
        {
            return View();
        }
        public ViewResult Become_helper()
        {
            return View();
        }
        public ViewResult New_user()
        {
            return View();
        }
        public IActionResult Privacy()
        {
            return View();
        }
    }
}
