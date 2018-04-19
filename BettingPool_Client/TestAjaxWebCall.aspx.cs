using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Script.Serialization;
using Newtonsoft.Json;

namespace BettingPool_Client {
    public partial class TestAjaxWebCall : System.Web.UI.Page {
        public static TestAjaxWebCall jdThis;
        public class Box {
            public int _Xaxis {get; set;}
            public int _Yaxis {get; set;}
            public string _Owner {get;set;}
            public Box(int xaxis, int yaxis, string owner) {
                _Xaxis = xaxis;
                _Yaxis = yaxis;
                _Owner = owner;
            }
        }
        public Box[,] boxes = new Box[10,10];
        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                jdThis = this;
                for (int x = 0; x < 10; x++) {
                    for (int y = 0; y < 10; y++) {
                        boxes[x,y]=new Box(x,y,"Buddy");
                    }
                }
            }
        }
        [WebMethod]                                 
        public static string testajax(int status, string name) {
                var jsonSerialiser = new JavaScriptSerializer();
                return JsonConvert.SerializeObject(jdThis.boxes);
        }

    }
}