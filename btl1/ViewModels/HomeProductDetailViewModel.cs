using btl1.Models;

namespace btl1.ViewModels
{
	public class HomeProductDetailViewModel
	{
		public Sanpham Sanpham { get; set; }
		public List<AnhSp> anhSps { get; set; }
		public List<Sanpham> sanphams { get; set; }
		public HomeProductDetailViewModel(Sanpham sanpham, List<AnhSp> anhSps, List<Sanpham> sanphams)
		{
			Sanpham = sanpham;
			this.anhSps = anhSps;
			this.sanphams = sanphams;
		}
	}
}
