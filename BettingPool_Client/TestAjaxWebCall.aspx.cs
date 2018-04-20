using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Script.Serialization;
using Newtonsoft.Json;
using FBPLibrary;
using Common;
using System.Data;
using System.Data.SqlClient;

namespace BettingPool_Client {
    public partial class TestAjaxWebCall : System.Web.UI.Page {
        public static TestAjaxWebCall jdThis;
        private static string connectionString="Data Source=localhost\\SQLEXPRESS,1433;Initial Catalog=OfficeSportsPool;User ID=MikeSamuels;Password=diamond222";
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
            SqlCommand cmd=new SqlCommand("uspGamesGet");
            DataSet ds=Common.Utils.getDataSet(cmd,connectionString);
            string saveGameId="";
            string saveSportsEventId="";
            Team visitingTeam=null;
            Team homeTeam=null;
            Game game=null;
            SportEvent sportEvent=null;
            List<SportEvent> allEvents=new List<SportEvent>();
            foreach(DataRow dr in ds.Tables[0].Rows) {
                string sportsEventId = (string)dr["SportsEventId"];
                if(sportsEventId!=saveSportsEventId) {
                    if(saveSportsEventId!="") {
                        allEvents.Add(sportEvent);
                    }
                    visitingTeam=new Team((string)dr["VisitingTeamName"],new Sport((SportTypes)dr["SportTypeId"]), new Guid((string)dr["VisitingTeamId"]));
                    homeTeam=new Team((string)dr["HomeTeamName"],new Sport((SportTypes)dr["SportTypeId"]), new Guid((string)dr["VisitingTeamId"]));
                    DateTime date=Convert.ToDateTime(dr["DateTime"]);
                    Sport sport=new Sport((SportTypes)dr["SportTypeId"]);
                    sportEvent=new SportEvent(homeTeam,visitingTeam,date,sport,new Guid(sportsEventId), new List<Game>());
                    saveSportsEventId=sportsEventId;
                }
                string gameid=(string)dr["GameId"];
                if(gameid!=saveGameId) {
                    if(saveGameId!="") {
                        sportEvent.Games.Add(game);
                    }
                    game=new Game(new Guid(gameid),sportEvent,new List<Bet>());
                    saveGameId=gameid;
                }
                Person person=new Person((string)dr["FirstName"],(string)dr["LastName"],new Guid((string)dr["PersonId"]),(string)dr["HomePhone"],
                    (string)dr["CellPhone"],(string)dr["ExternalOfficeWorkPhone"],(string)dr["InternalOfficeWorkPhone"],(string)dr["Email"]);
                Bet bet = new Bet(Convert.ToDecimal(dr["Amount"]),person,new Guid(gameid), new Guid((string)dr["BetId"]));
                game.Bets.Add(bet);

            }
            if (sportEvent!=null) {
                allEvents.Add(sportEvent);
            }

            var jsonSerialiser = new JavaScriptSerializer();
            return JsonConvert.SerializeObject(jdThis.boxes);
        }

    }
}