var events = [
  {
    category: 'Historical Events',
    dates: [
      {date: '1915-05-07', category: 'events', title: 'Sinking of the Lusitania'},
      {date: '1917-04-06', category: 'events', title: 'The United States joins the War in Europe'},
      {date: '1918-09-01', category: 'events', title: 'Influenza epidemic takes hold'},
      {date: '1918-11-11', category: 'events', title: 'Armistice signifying end of World War I'},
      {date: '1919-01-16', category: 'events', title: 'Nebraska becomes final state needed to ratify the 18th amendment, prohibition of alcohol'},
      {date: '1919-04-15', category: 'events', title: 'Two employees of Slater and Morrill Shoe Company shot dead during robbery in South Braintree, MA'},
      {date: '1919-05-05', category: 'events', title: 'Nicola Sacco and Bartolomeo Vanzetti arrested for South Braintree murders'},
      {date: '1919-06-02', category: 'events', title: 'Wave of anarchist bombings including Boston Judge Albert Hayden and US Attorney General Mitchell Palmer. Would lead to further anti-immigrant sentiment and raids leading to deportation'},
      {date: '1919-09-09', category: 'events', title: 'Boston Police go on strike. Looting and rioting results. Governor Coolidge calls in national guard'},
      {date: '1920-01-20', category: 'events', title: 'League of Nations established without support from the United States' },
      {date: '1920-08-18', category: 'events', title: '19th Amendment is ratified preventing state and federal government from denying the right to vote based on sex' },
      {date: '1920-09-11', category: 'events', title: 'Sacco and Vanzetti indicted for South Braintree murders' },
      {date: '1920-10-16', category: 'events', title: 'Bomb detonates on Wall St in New York City killing 40, injuring over 200, and causing over $2 million in damage. Believed to be anarchist revenge for prosecution of Sacco and Vanzetti' },
      {date: '1921-03-04', category: 'events', title: 'Warren G Harding inaugurated as President of the United States on a platform of deregulation and business friendly policies' },
      {date: '1921-06-14', category: 'events', title: 'Sacco and Vanzetti found guilty of murder' },
      {date: '1923-08-02', category: 'events', title: 'Warren G Harding dies in office as President of the United States' },
      {date: '1923-08-17', category: 'events', title: 'Vice President Calvin Coolidge officially sworn in as President by Cheif Justice William Howard Taft' },
      {date: '1923-09-08', category: 'events', title: 'Airport opens in East Boston, later named after Lt Gen. Edward Lawrence Logan' },  
      {date: '1924-11-24', category: 'events', title: 'Calvin Coolidge elected president of the United States' },
      {date: '1927-08-23', category: 'events', title: 'Sacco and Vanzetti executed by electric chair' },
    ]    
  },
  {
    category: 'Molasses Tank',
    dates: [
  
  {date: '1915-04-01', category: 'tank', title: 'Arthur P Jell given plans for molasses tank by Hammond Iron Works' },
  {date: '1915-09-24', category: 'tank', title: 'Arthur P Jell signs 20 year lease with Boston Elevated for parcel of land where tank will be built'},
  {date: '1915-10-01', category: 'tank', title: 'Plans for the foundation of the molasses tank submitted to Boston Building Department by Hammond Iron Works' },
  {date: '1915-12-31', category: 'tank', title: 'Construction of the molasses tank completes' },
  {date: '1918-08-07', category: 'tank', title: 'Early August, Arthur Jell orders tank repainted to a brown color to disguise molasses streaks running down the height of the tank'},
  {date: '1918-12-20', category: 'tank', title: 'Molasses tank recaulked ahead of final shipment before prohibition is passed'},
  {date: '1919-01-13', category: 'tank', title: 'The Miliero unloads a shipment of molasses into the tank filling it to capacity' },
  {date: '1919-01-15', category: 'flood', title: 'Molasses tank bursts, flooding North End with over 2 million gallons of molasses in a 25 foot tidal wave killing 21, injuring over 150, and causing extreme property damage' },
  {date: '1919-01-19', category: 'flood', title: 'Patrick Breen and James McMullen die of injuries from flood'},
  {date: '1919-01-20', category: 'flood', title: 'Body 10 year old Pasquale Iantosca found. City Paver John Callahan dies of injuries from flood'},
  {date: '1919-01-26', category: 'flood', title: 'Body of Flaminio Gallerani found in the water. Identified as 19th victim of flood'},
  {date: '1919-05-19', category: 'flood', title: 'Body of Cesare Nicolo recovered from water under wharf. 20th victim of the flood.'},
  {date: '1919-09-14', category: 'tank', title: 'Fire badly damaged USIA brooklyn plant. Cause attributed to someone using an incendiary device.'},
  {date: '1919-12-11', category: 'flood', title: 'Stephen Clougherty dies in state insane asylum marking the 21st and final death attributed to the molasses flood' },
  {date: '1920-08-10', category: 'trial', title: 'Case of Dorr vs United States Industrial Alcohol begins. Plaintiffs arguing negligence in construction and maintenance. Defense arguing anarchist activites damaged the tank'},
  {date: '1920-08-11', category: 'trial', title: 'Opening arguments for the plaintiffs begins by Attorney Damon Hall' },
  {date: '1920-09-02', category: 'trial', title: 'Opening remarks begin for the defense in the civil trial of the molasses flood against US Industrial Alcohol'},
  {date: '1921-03-25', category: 'trial', title: 'Arthur P Jell deposed in New York City at the Hotel Belmont' },
  {date: '1923-09-20', category: 'trial', title: 'Charles Choate delivers closing arguments for defense' },
  {date: '1923-09-24', category: 'trial', title: 'Damon Hall delivers closing arguments on behalf of the plaintiffs' },
  {date: '1923-09-29', category: 'trial', title: 'Molasses flood hearings declared over' },
  {date: '1925-04-28', category: 'trial', title: 'Auditor Hugh W. Ogden issues verdict against USIA' },
]
  }
];


    var timeline = milestones('#timeline')
      .mapping({
        'category': 'category',
        'entries': 'dates',
        'timestamp': 'date',
        'text': 'title'
      });

    // var checkboxOptimize = document.getElementById('checkbox-optimize');
    // var checkboxUseLabels = document.getElementById('checkbox-labels');

    function update() {
      timeline
        .parseTime('%Y-%m-%d')
        .aggregateBy('day')
        .optimize(true)
        .useLabels(true)
        .render(events);
    }

    update();