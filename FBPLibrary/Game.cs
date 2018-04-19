using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FBPLibrary {
    public class Game {
        private Guid _Id;
        private SportEvent _SportEvent;
        private List<Bet> _Bets;
        

        private void produceGrid() {
            decimal pool=derivePool();
            Hashtable shares=deriveShares(pool);
            List<Square> grid = deriveGrid(shares);
        }
        private decimal derivePool() {
            decimal pool = 0;
            foreach (Bet bet in _Bets) {
                pool += bet.Amount;
            }
            return pool;
        }
        private Hashtable deriveShares(decimal pool) {
            Hashtable shares = new Hashtable();
            foreach (Bet bet in _Bets) {
                shares.Add(bet.Person,(double)((double)bet.Amount/(double)pool));
            }
            /*TODO: Add up all the amounts, and whatever the leftover is, allocate it (randomly) to
                a share whose already got a fraction allocation.
                */
            return shares;
        }
        private List<Square> deriveGrid(Hashtable shares) {
            // 1. dish out all whole numbers randomly
            // 2. dish out left-over fractions randomly
            return null;
        }
    }
}
