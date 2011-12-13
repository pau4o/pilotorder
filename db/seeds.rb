# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Quote.delete_all
Quote.create(:message => "Пилотските услуги се извършват по писмена заявка от Капитана на кораба, Корабособственика или неговия Агент.", :author => "ОБЩИ УСЛОВИЯ")
Quote.create(:message => "В морския пилотаж качество означава безопасност, безаварийност, опазване на околната среда и човешкия живот на море.", :author => "к.д.п. Енчо Тюркеджиев")

def create_flags
  count = Flag.count
  if count < 1
  "AD;Andorra;.ad
  AE;United Arab Emirates;.ae
  AF;Afghanistan;.af
  AG;Antigua and Barbuda;.ag
  AI;Anguilla;.ai
  AL;Albania;.al
  AM;Armenia;.am
  AN;Netherlands Antilles;.an
  AO;Angola;.ao
  AQ;Antarctica;.aq
  AR;Argentina;.ar
  AS;American Samoa;.as
  AT;Austria;.at
  AU;Australia;.au
  AW;Aruba;.aw
  AX;Åland Islands;.ax
  AZ;Azerbaijan;.az
  BA;Bosnia and Herzegovina;.ba
  BB;Barbados;.bb
  BD;Bangladesh;.bd
  BE;Belgium;.be
  BF;Burkina Faso;.bf
  BG;Bulgaria;.bg
  BH;Bahrain;.bh
  BI;Burundi;.bi
  BJ;Benin;.bj
  BL;Saint Barthélemy;.bl
  BM;Bermuda;.bm
  BN;Brunei Darussalam;.bn
  BO;Bolivia, Plurinational State of;.bo
  BR;Brazil;.br
  BS;Bahamas;.bs
  BT;Bhutan;.bt
  BV;Bouvet Island;.bv
  BW;Botswana;.bw
  BY;Belarus;.by
  BZ;Belize;.bz
  CA;Canada;.ca
  CC;Cocos (Keeling) Islands;.cc
  CD;Congo, the Democratic Republic of the;.cd
  CF;Central African Republic;.cf
  CG;Congo;.cg
  CH;Switzerland;.ch
  CI;Côte d'Ivoire;.ci
  CK;Cook Islands;.ck
  CL;Chile;.cl
  CM;Cameroon;.cm
  CN;China;.cn
  CO;Colombia;.co
  CR;Costa Rica;.cr
  CU;Cuba;.cu
  CV;Cape Verde;.cv
  CX;Christmas Island;.cx
  CY;Cyprus;.cy
  CZ;Czech Republic;.cz
  DE;Germany;.de
  DJ;Djibouti;.dj
  DK;Denmark;.dk
  DM;Dominica;.dm
  DO;Dominican Republic;.do
  DZ;Algeria;.dz
  EC;Ecuador;.ec
  EE;Estonia;.ee
  EG;Egypt;.eg
  EH;Western Sahara;.eh
  ER;Eritrea;.er
  ES;Spain;.es
  ET;Ethiopia;.et
  FI;Finland;.fi
  FJ;Fiji;.fj
  FK;Falkland Islands (Malvinas);.fk
  FM;Micronesia, Federated States of;.fm
  FO;Faroe Islands;.fo
  FR;France;.fr
  GA;Gabon;.ga
  GB;United Kingdom;.gb
  (.uk);ISO 3166-2:GB;
  GD;Grenada;.gd
  GE;Georgia;.ge
  GF;French Guiana;.gf
  GG;Guernsey;.gg
  GH;Ghana;.gh
  GI;Gibraltar;.gi
  GL;Greenland;.gl
  GM;Gambia;.gm
  GN;Guinea;.gn
  GP;Guadeloupe;.gp
  GQ;Equatorial Guinea;.gq
  GR;Greece;.gr
  GS;South Georgia and the South Sandwich Islands;.gs
  GT;Guatemala;.gt
  GU;Guam;.gu
  GW;Guinea-Bissau;.gw
  GY;Guyana;.gy
  HK;Hong Kong;.hk
  HM;Heard Island and McDonald Islands;.hm
  HN;Honduras;.hn
  HR;Croatia;.hr
  HT;Haiti;.ht
  HU;Hungary;.hu
  ID;Indonesia;.id
  IE;Ireland;.ie
  IL;Israel;.il
  IM;Isle of Man;.im
  IN;India;.in
  IO;British Indian Ocean Territory;.io
  IQ;Iraq;.iq
  IR;Iran, Islamic Republic of;.ir
  IS;Iceland;.is
  IT;Italy;.it
  JE;Jersey;.je
  JM;Jamaica;.jm
  JO;Jordan;.jo
  JP;Japan;.jp
  KE;Kenya;.ke
  KG;Kyrgyzstan;.kg
  KH;Cambodia;.kh
  KI;Kiribati;.ki
  KM;Comoros;.km
  KN;Saint Kitts and Nevis;.kn
  KP;Korea, Democratic People's Republic of;.kp
  KR;Korea, Republic of;.kr
  KW;Kuwait;.kw
  KY;Cayman Islands;.ky
  KZ;Kazakhstan;.kz
  LA;Lao People's Democratic Republic;.la
  LB;Lebanon;.lb
  LC;Saint Lucia;.lc
  LI;Liechtenstein;.li
  LK;Sri Lanka;.lk
  LR;Liberia;.lr
  LS;Lesotho;.ls
  LT;Lithuania;.lt
  LU;Luxembourg;.lu
  LV;Latvia;.lv
  LY;Libyan Arab Jamahiriya;.ly
  MA;Morocco;.ma
  MC;Monaco;.mc
  MD;Moldova, Republic of;.md
  ME;Montenegro;.me
  MF;Saint Martin (French part);.mf
  MG;Madagascar;.mg
  MH;Marshall Islands;.mh
  MK;Macedonia, the former Yugoslav Republic of;.mk
  ML;Mali;.ml
  MM;Myanmar;.mm
  MN;Mongolia;.mn
  MO;Macao;.mo
  MP;Northern Mariana Islands;.mp
  MQ;Martinique;.mq
  MR;Mauritania;.mr
  MS;Montserrat;.ms
  MT;Malta;.mt
  MU;Mauritius;.mu
  MV;Maldives;.mv
  MW;Malawi;.mw
  MX;Mexico;.mx
  MY;Malaysia;.my
  MZ;Mozambique;.mz
  NA;Namibia;.na
  NC;New Caledonia;.nc
  NE;Niger;.ne
  NF;Norfolk Island;.nf
  NG;Nigeria;.ng
  NI;Nicaragua;.ni
  NL;Netherlands;.nl
  NO;Norway;.no
  NP;Nepal;.np
  NR;Nauru;.nr
  NU;Niue;.nu
  NZ;New Zealand;.nz
  OM;Oman;.om
  PA;Panama;.pa
  PE;Peru;.pe
  PF;French Polynesia;.pf
  PG;Papua New Guinea;.pg
  PH;Philippines;.ph
  PK;Pakistan;.pk
  PL;Poland;.pl
  PM;Saint Pierre and Miquelon;.pm
  PN;Pitcairn;.pn
  PR;Puerto Rico;.pr
  PS;Palestinian Territory, Occupied;.ps
  PT;Portugal;.pt
  PW;Palau;.pw
  PY;Paraguay;.py
  QA;Qatar;.qa
  RE;Réunion;.re
  RO;Romania;.ro
  RS;Serbia;.rs
  RU;Russian Federation;.ru
  RW;Rwanda;.rw
  SA;Saudi Arabia;.sa
  SB;Solomon Islands;.sb
  SC;Seychelles;.sc
  SD;Sudan;.sd
  SE;Sweden;.se
  SG;Singapore;.sg
  SH;Saint Helena, Ascension and Tristan da Cunha;.sh
  SI;Slovenia;.si
  SJ;Svalbard and Jan Mayen;.sj
  SK;Slovakia;.sk
  SL;Sierra Leone;.sl
  SM;San Marino;.sm
  SN;Senegal;.sn
  SO;Somalia;.so
  SR;Suriname;.sr
  ST;Sao Tome and Principe;.st
  SV;El Salvador;.sv
  SY;Syrian Arab Republic;.sy
  SZ;Swaziland;.sz
  TC;Turks and Caicos Islands;.tc
  TD;Chad;.td
  TF;French Southern Territories;.tf
  TG;Togo;.tg
  TH;Thailand;.th
  TJ;Tajikistan;.tj
  TK;Tokelau;.tk
  TL;Timor-Leste;.tl
  TM;Turkmenistan;.tm
  TN;Tunisia;.tn
  TO;Tonga;.to
  TR;Turkey;.tr
  TT;Trinidad and Tobago;.tt
  TV;Tuvalu;.tv
  TW;Taiwan, Province of China;.tw
  TZ;Tanzania, United Republic of;.tz
  UA;Ukraine;.ua
  UG;Uganda;.ug
  UM;United States Minor Outlying Islands;.um
  US;United States;.us
  UY;Uruguay;.uy
  UZ;Uzbekistan;.uz
  VA;Holy See (Vatican City State);.va
  VC;Saint Vincent and the Grenadines;.vc
  VE;Venezuela, Bolivarian Republic of;.ve
  VG;Virgin Islands, British;.vg
  VI;Virgin Islands, U.S.;.vi
  VN;Viet Nam;.vn
  VU;Vanuatu;.vu
  WF;Wallis and Futuna;.wf
  WS;Samoa;.ws
  YE;Yemen;.ye
  YT;Mayotte;.yt
  ZA;South Africa;.za
  ZM;Zambia;.zm
  ZW;Zimbabwe;.zw".split("\n").each { |e| 
    flag = e.strip.split(';')
    Flag.create( :name => flag[1], :alpha2 => flag[0], :tld => flag[2] )
  }
  else
    puts "Skipping create_flags, already have #{count} record(s)."
  end
end

def parse_and_create_vessels
  if Vessel.count == 0
    puts "== parse_and_create_vessels"
    keys = %w(id name callsign flag owner gt loa boa draftfwd aft airdraft created_at editor_id imonumber propelers proptype thrusters)
    require 'csv'
    c = 0
    CSV.open("db/ships_data.csv", 'r', '|') do |row|
      c += 1
      next if c == 1
      data = Hash.new
#       print "."
#       print c if c % 100 == 0
      keys.each_with_index { |k,i| data[k] = row[i] }
      Vessel.create(data)
    end
  end
end

def yaml2vessels
  if Vessel.count == 0
    y = YAML::load( File.open("db/vessels.yml") )
    y.each { |e| Vessel.create(e.attributes) }
  end
end

def yaml2ships
  if Ship.count == 0
    y = YAML::load( File.open("db/ships.yml") )
    y.each { |e| Ship.create(e.attributes) }
  end
end


def create_criterias
  if Criteria.count == 0
    Criteria.create(:name => "Маневрата е по правилата",               :alert => false, :number => 1)
    Criteria.create(:name => "Работа на пилотския катер",              :alert => false, :number => 2)
    Criteria.create(:name => "Състояние на пилотския трап",            :alert => false, :number => 3)
    Criteria.create(:name => "Комуникация и сработване на мостика",    :alert => true,  :number => 4)
    Criteria.create(:name => "Състояние на навигационните ограждения", :alert => false, :number => 5)
    Criteria.create(:name => "Работа на манипулационните постове",     :alert => false, :number => 6)
    Criteria.create(:name => "Състояние на кея",                       :alert => true,  :number => 7)
    Criteria.create(:name => "Положение на крановете",                 :alert => false, :number => 8)
    Criteria.create(:name => "Посрещане/Изпращане от стифадор",        :alert => false, :number => 9)
    Criteria.create(:name => "Работа на влекачите",                    :alert => false, :number => 10)
    Criteria.create(:name => "Работа на швартовия катер",              :alert => false, :number => 11)
    Criteria.create(:name => "Работа на бреговите моряци",             :alert => false, :number => 12)
    Criteria.create(:name => "Метеообстановка",                        :alert => false, :number => 13)
  else
    puts "Skipping create_criterias, already have #{Criteria.count} record(s)."
  end
end

def create_users
  data=<<__EOF__
"petrov";"pp62";"Petar";"PETROV";"Capt.";"PILOT";"onduty";"0887595600"
"dvib";"77";"Valentin";"BARGAZOV";"Capt.";"DISPATCHER";"onduty";"0 888 944 393"
"parvanovd";"va48";"Tzviatko";"PARVANOV";"Capt.";"DISPATCHER";"onduty";""
"boss";"veneto";"Krasimir";"TODOROV";"Capt.";"BOSS";"onduty";"0887 423 863"
"krasimir";"veneto";"Krasimir";"TODOROV";"Capt.";"BOSS";"onduty";"0887 423 863"
"upravitel";"veneto";"Krasimir";"TODOROV";"Capt.";"BOSS";"onduty";"0887 423 863"
"newboss";"pilot5822";"Krasimir";"TODOROV";"Capt.";"BOSS";"onduty";"0 887 423 863"
"marinov";"kim";"Krasimir";"MARINOV";"Capt.";"PILOT";"onduty";"0884090410"
"dai";"ata";"Dimitar";"ATANASOV";"Capt.";"DISPATCHER";"onduty";"0 888 943 524"
"isk";"isk68";"Ivaylo";"KIRYAKOV";"Capt.";"PILOT";"onduty";"0888434653"
"admin";"111";"varnapage";"com";"";"BOSS";"onduty";""
"lyubo";"li45";"Lipco";"LIPCOV";"Capt.";"DISPATCHER";"retired";"0887 442 192"
"kolev";"shk";"Stanislav";"KOLEV";"Capt.";"PILOT";"onduty";"0888952047"
"dencho";"miroslav";"Encho";"TYURKEDZHIEV";"Capt.";"DISPATCHER";"onduty";"0888 479 838"
"vk";"vk88";"Vasil";"KOKOROV";"Capt.";"PILOT";"retired";""
"todor";"to33";"Todor";"KIROV";"Capt.";"PILOT";"retired";""
"hristod";"hr60";"Hristo";"KOLEV";"Capt.";"DISPATCHER";"retired";""
"manager";"miroslav";"Enco";"TYURKEDZIEV";"Capt.";"BOSS";"onduty";"0888 479 838"
"mimi";"111";"Mimi";"IVANOVA";"Mrs.";"CLERK";"retired";""
"kos";"ko89";"Kostadin";"KOKARCHIN";"Capt.";"PILOT";"retired";""
"kosd";"koka";"Kostadin";"KOKARCHIN";"Capt.";"DISPATCHER";"retired";""
"apo";"0625";"Apostol";"ANGELOV";"Capt.";"DISPATCHER";"retired";""
"angelov";"0625";"Apostol";"ANGELOV";"Capt.";"PILOT";"retired";""
"dimmi";"3127";"Dimitar";"MIHAJLOV";"Capt.";"PILOT";"retired";""
"angel";"an23";"Angel";"STANEV";"Capt.";"PILOT";"retired";""
"anko";"1420523";"Anko";"HRISTOV";"Capt.";"PILOT";"retired";""
"dimiv";"vi87_retired";"Dimitar iv.";"DIMITROV";"Capt.";"DISPATCHER";"retired";""
"nike";"ni13";"Nikolaj";"NIKOLOV";"Capt.";"PILOT";"retired";""
"mitko";"mi55";"Dimitar";"STANKOV";"Capt.";"PILOT";"retired";""
"stoil";"111";"Stoil";"DRAGIEV";"Capt.";"DISPATCHER";"retired";""
"dyordanov";"yo99";"Nikolaj";"YORDANOV";"Capt.";"DISPATCHER";"retired";""
"marin";"ma89";"Marin";"BEDZHEV";"Capt.";"PILOT";"onduty";"0888 247 043"
"dplamen";"pl22";"Plamen ";"ARNAUDOV";"Capt.";"DISPATCHER";"onduty";""
"str";"st55";"Nikola";"STRUNCHEV";"Capt.";"PILOT";"retired";""
"krasi";"veneto";"Krasimir";"TODOROV";"Capt.";"PILOT";"onduty";"0887 423 863"
"megi";"me67";"Miglena";"GEORGIEVA";"Mrs.";"CLERK";"retired";""
"ivans";"paloma";"Ivan";"STEFANOV";"Capt.";"PILOT";"retired";""
"pdanov";"pd888";"Tsvyatko";"YOCHEV";"Capt.";"PILOT";"retired";"0888 952 050"
"krasen";"k69";"Krassen";"ANGELOV";"Capt.";"PILOT";"onduty";"0888 747 886"
"vanko";"van77";"Vanko";"ANTONOV";"Capt.";"DISPATCHER";"onduty";"0888 935 489"
"valeri";"va88";"Valery";"ANTONOV";"Capt.";"PILOT";"onduty";"0888 952 046"
"plamen";"pl22";"Plamen";"ARNAUDOV";"Capt.";"PILOT";"onduty";"0899 108 316"
"atanasov";"ata";"Dimitar";"ATANASOV";"Capt.";"PILOT";"onduty";"0888 943 524"
"did";"di90";"D. il.";"DIMITROV";"Capt.";"PILOT";"onduty";"0885 911 478"
"dim";"dim2";"Dimitar g.";"DIMITROV";"Capt.";"PILOT";"onduty";"0888 340 160"
"bojo";"alkor";"Bojidar";"DOBREV";"Capt.";"PILOT";"onduty";"0888 942 917"
"rado";"ra12";"Radostin";"SHIVACHEV";"Capt.";"PILOT";"retired";"0887 415 391"
"dvesko";"ve00";"Veselin";"KOTSEV";"Capt.";"DISPATCHER";"retired";"0888 952 055"
"vesko";"ve00";"Veselin";"KOTSEV";"Capt.";"PILOT";"retired";"0888 952 055"
"lipcho";"li38";"Lipcho";"LIPCHEV";"Capt.";"PILOT";"retired";"0887 442 192"
"nadi";"na99";"Nadka";"MIHAILOVA";"Mrs.";"CLERK";"onduty";"0888 262 275"
"maria";"toto";"Maria";"MIHAYLOVA";"Mrs.";"BOSS";"onduty";"0888 327 407"
"gvk";"ggg";"Georgi";"KOKOROV";"Capt.";"PILOT";"onduty";"0888 201 100"
"rosen";"rmm";"Rosen";"MINEV";"Capt.";"PILOT";"onduty";"0888 618 860"
"emo";"emo12";"Emilyan";"NEDELCHEV";"Capt.";"PILOT";"onduty";"0888 952 043"
"hristo";"hr60";"Hristo";"KOLEV";"Capt.";"PILOT";"retired";""
"parvanov";"va48";"Tzviatko";"PARVANOV";"Capt.";"PILOT";"onduty";"0888 921 184"
"ivan";"iv87";"Ivan";"STEFANOV";"Capt.";"PILOT";"retired";""
"sayka";"555";"Petar ";"SAYDENOV";"Capt.";"PILOT";"onduty";"0898 630 267"
"rumen";"ru90";"Rumen";"VASILEV";"Capt.";"PILOT";"onduty";"0896 738 871"
"savchev";"sa00";"Georgi";"SAVCHEV";"Capt.";"PILOT";"onduty";"0887 228 674"
"strunchev";"hstr";"Christo";"STRUNCHEV";"Capt.";"PILOT";"onduty";"0895 798 265"
"yordanov";"yo99";"Plamen";"YORDANOV";"Capt.";"PILOT";"onduty";"0886 433 023"
"nll";"nll";"Nedelcho ";"LIPCHEV";"Capt.";"PILOT";"onduty";"0889 382 738"
"npp";"np33";"Nikola";"PETROV";"Capt.";"PILOT";"retired";""
"dvasil";"dv34_retired";"Vasil";"VASILEV";"Capt.";"DISPATCHER";"retired";""
"vasil";"dv34_retired";"Vasil";"VASILEV";"Capt.";"PILOT";"retired";""
"koko";"111";"Nikolaj";"DAMYANOV";"Capt.";"BOSS";"retired";"0888 952 057"
"vib";"47";"Valentin";"BARGAZOV";"Capt.";"PILOT";"onduty";"0888 944 393"
"shivachev";"ross";"Rostislav";"SHIVACHEV";"Capt.";"PILOT";"onduty";"+359888659743"
"dkrasi";"veneto";"Krasimir";"TODOROV";"Capt.";"DISPATCHER";"onduty";"0887 423 863"
"encho";"miro";"Encho";"TYURKEDZHIEV";"Capt.";"BOSS";"onduty";"0888 479 838"
"emil";"1234";"Emil";"MLADENOV";"Capt.";"PILOT";"onduty";"0 888 235 393"
"dbojo";"alkor";"Bojidar";"DOBREV";"Capt.";"DISPATCHER";"onduty";"0888 942 917"
"rumend";"menva";"Rumen";"VASILEV";"Capt.";"DISPATCHER";"disabled";"0896 738 871"
"bojko";"byo";"Bojko";"YOVCHEV";"Capt.";"DISPATCHER";"onduty";"0888 431 696"
"valant";"va88";"Valery";"ANTONOV";"Capt.";"DISPATCHER";"onduty";"0888 952 046"
"BOJKO";"byo";"Bozhko";"YOVCHEV";"Capt.";"PILOT";"onduty";""
"emod";"emo12";"Emilyan";"NEDELCHEV";"Capt.";"DISPATCHER";"onduty";"0888 952 043"
"savchev1";"sa01";"Georgi";"SAVCHEV";"Capt.";"DISPATCHER";"onduty";"0887 22 85 74"
"marine";"ma89";"Marin";"BEDZHEV";"Capt.";"DISPATCHER";"onduty";"0888 247 043"
"jordan";"1089";"Plamen";"JORDANOV";"Capt.";"DISPATCHER";"onduty";"0886 433 023"
"borko";"kara";"Borislav";"KARADENCHEV";"Capt.";"PILOT";"onduty";"0888 453 987"
"niky";"bedzho";"Nikolay";"BEDZHEV";"Capt.";"PILOT";"onduty";"0888 479003"
"yana";"94";"Yancho";"KRASTEV";"Capt.";"DISPATCHER";"retired";"0888 952 056"
"danov";"pd888";"Tsvyatko";"YOCHEV";"Capt.";"DISPATCHER";"retired";"0888 952 050"
"nakov";"5555";"Dimitar";"NAKOV";"Capt.";"PILOT";"retired";"0888 952 044"
__EOF__

  data.split("\n").each { |e| 
    (username, password, first, last, title, rolename, status, phone ) = e.gsub('"','').split(';')

    role = Role.find_or_create_by_name(rolename)

    user = User.create do |u|
      u.login = username
      u.password = u.password_confirmation = password
      u.email = "#{username}@pilotorder.com"
      u.status = status
      u.phone = phone
      u.title = title
      u.name = [first,last].join(" ")
    end

    unless user.errors.blank?
      puts user.errors
    end

    user.roles << role
  }
end

def create_places
  data=<<__EOF__
B,C,H,K,_,_,p/s,Balchik
B,C,H,K,A,5,_,Balchik Anchorage
B,P,B,G,_,_,_,Balchik Pilot Boarding Ground
V,A,R,P,B,G,_,Varna Pilot Boarding Ground
V,A,R,W,I,N,_,Varna Roads Anchorage 1 - Winter
V,A,R,S,U,M,_,Varna Roads Anchorage 2 - Summer
V,A,R,4,D,G,_,Varna Roads Anchorage 4 - Dangerous Goods  
V,A,R,D,E,V,_,Varna Roads Deviation Polygon 311 (Ground)
V,P,A,X,_,_,p/s,Passenger Terminal 
V,A,R,E,1,_,p/s,Varna East 1
V,A,R,E,2,_,p/s,Varna East 2
V,A,R,E,3,_,p/s,Varna East 3
V,A,R,E,4,_,p/s,Varna East 4
V,A,R,E,5,_,p/s,Varna East 5
V,A,R,E,6,_,p/s,Varna East 6
V,A,R,E,7,_,p/s,Varna East 7
V,A,R,E,8,_,p/s,Varna East 8
V,A,R,E,9,_,p/s,Varna East 9
V,A,R,E,10,_,p/s,Varna East 10
V,A,R,E,11,_,p/s,Varna East 11
V,A,R,E,12,_,p/s,Varna East 12
V,A,R,E,13,_,p/s,Varna East 13
B,P,L,1,_,_,p/s,Bulport Logistic 1
B,P,L,2,_,_,p/s,Bulport Logistic 2
B,P,L,3,_,_,p/s,Bulport Logistic 3
B,P,L,4,_,_,p/s,Bulport Logistic 4
B,Y,D,7,_,_,p/s,Bulyard 7
B,Y,D,6,_,_,p/s,Bulyard 6
B,Y,D,5,_,_,p/s,Bulyard 5
B,Y,B,D,D,_,bin/sin,Bulyard Big Dry Dock
B,Y,S,D,D,_,bin/sin,Bulyard Small Dry Dock
B,Y,D,4,_,_,p/s,Bulyard 4
B,Y,D,3,_,_,p/s,Bulyard 3
B,Y,D,2,_,_,p/s,Bulyard 2
B,Y,D,1,_,_,p/s,Bulyard 1
O,S,F,D,2,_,bin/sin,Odessos Shiprepairyard Floating Dock 2
O,S,F,D,2,N,p/s,Odessos Shipyard alongside Floating Dock 2N of the dock
O,S,F,D,2,S,p/s,Odessos Shipyard alongside Floating Dock 2S of the dock
O,S,Y,5,_,_,p/s,Odessos Shiprepairyard Quay 5 (disused)
O,S,Y,4,_,_,p/s,Odessos Shiprepairyard Quay 4
O,S,Y,3,_,_,p/s,Odessos Shiprepairyard Quay 3
O,S,Y,D,D,_,bin/sin,Odessos Shiprepairyard Dry Dock
O,S,F,D,3,_,bin/sin,Odessos Shiprepairyard Floating Dock 3
O,S,F,D,3,N,p/s,Odessos Shipyard alongside Floating Dock3 N of the dock
O,S,F,D,3,S,p/s,Odessos Shipyard alongside Floating Dock3 S of the dock
O,S,Y,2,_,_,p/s,Odessos Shiprepairyard Quay 2
O,S,Y,1,_,_,p/s,Odessos Shiprepairyard Quay 1
P,E,T,R,O,3,p/s,Petrol Quay 3
P,E,T,R,O,2,p/s,Petrol Quay 2
P,E,T,R,O,1,p/s,Petrol Quay 1
T,B,O,I,L,_,p/s,Terminal Base Oils
P,4,M,V,_,_,p/s,Quay P4MV
O,S,Y,6,_,_,p/s,Odessos Shiprepairyard Quay 6
P,B,M,1,_,_,p/s,Odessos PBM Quay 1
P,B,M,2,_,_,p/s,Odessos PBM Quay 2
P,B,M,2,A,_,p/s,Odessos PBM Quay 2a
A,3,B,9,E,_,_,Anchorage N3 Buoy9 Eastern Ground
A,3,B,9,W,_,_,Anchorage N3 Buoy9 Western Ground
A,6,B,9,_,_,_,Anchorage N6 South of Buoy9 
V,L,Z,V,_,_,_,Varna Lake Zvezditza Anchorage Area
L,E,S,P,1,_,p/s,Lesport Quay 1
L,E,S,P,2,_,p/s,Lesport Quay 2
L,E,S,P,3,_,p/s,Lesport Quay 3
L,E,S,P,4,_,p/s,Lesport Quay 4
D,F,F,D,1,_,bin/sin,Delfin-1 Floating Dock 1
D,F,F,D,1,E,p/s,Delfin-1 alongside Floating Dock1 E of the dock
D,F,F,D,1,W,p/s,Delfin-1 alongside Floating Dock1 W of the dock
D,F,Q,1,_,_,p/s,Delfin-1 Quay 1
D,F,S,P,4,5,p/s,Delfin-1 Shvartovi Pali 4-5
D,F,S,P,1,3,p/s,Delfin-1 Shvartovi Pali 1-2-3
D,F,Q,2,_,_,p/s,Delfin-1 Quay 2
D,F,F,D,2,_,bin/sin,Delfin-1 Floating Dock 2
D,F,F,D,2,E,p/s,Delfin-1 alongside Floating Dock2  E of the dock
D,F,F,D,2,W,p/s,Delfin-1 alongside Floating Dock2  W of the dock
T,E,C,1,_,_,p/s,TEC 1
T,E,C,2,_,_,p/s,TEC 2
T,E,C,3,_,_,p/s,TEC 3
T,R,M,2,_,_,p/s,Terem Quay 2
T,R,M,F,D,2,bin/sin,Terem Floating Dock 2
T,R,M,1,3,_,p/s,Terem Quay 1-3
T,R,M,P,1,E,p/s,Terem Prichal 1 (Eastern) East Side
T,R,M,P,1,W,p/s,Terem Prichal 1 (Eastern) West Side
T,R,M,P,2,E,p/s,Terem Prichal 2 (Western) East Side
T,R,M,P,2,W,p/s,Terem Prichal 2 (Western) West Side
T,R,M,5,_,_,p/s,Terem Quay 5
T,R,M,N,Q,_,p/s,Terem New Quay (South of Floating Dock 1)
T,R,M,F,D,1,bin/sin,Terem Floating Dock 1
M,R,C,N,P,L,p/s,Marcianopol
F,E,R,2,_,_,p,FERRYBOAT COMPLEX 2 SE Berth
F,E,R,1,_,_,s,FERRYBOAT COMPLEX 1 NW Berth
V,A,R,Z,T,_,p/s,Varna West under the tower
V,A,R,Z,1,_,p/s,Varna West Quay 1
V,A,R,Z,2,_,p/s,Varna West Quay 2
V,A,R,Z,3,_,p/s,Varna West Quay 3
V,A,R,Z,4,_,p/s,Varna West Quay 4
V,A,R,Z,5,_,p/s,Varna West Quay 5
V,A,R,Z,6,_,p/s,Varna West Quay 6
V,A,R,Z,7,_,p/s,Varna West Quay 7
V,A,R,Z,8,_,p/s,Varna West Quay 8
V,A,R,Z,9,_,p/s,Varna West Quay 9
V,A,R,Z,10,_,p/s,Varna West Quay 10
V,A,R,Z,0,_,p/s,Varna West Quay 0
V,A,R,Z,11,_,p/s,Varna West Quay 11
V,A,R,Z,12,_,p/s,Varna West Quay 12
V,A,R,Z,13,_,p/s,Varna West Quay 13
V,A,R,Z,14,_,p/s,Varna West Quay 14
V,A,R,Z,15,_,p/s,Varna West Quay 15
V,A,R,Z,16,_,p/s,Varna West Quay 16
V,A,R,Z,17,_,p/s,Varna West Quay 17
__EOF__

  data.split("\n").each { |line|
    (c1,c2, c3, c4, c5, c6, psn, name ) = line.split(',')
    code = [ c1,c2, c3, c4, c5, c6 ].join('').gsub(/_/, '')
    name
    place = Place.create do |p|
      p.name = name
      p.code = code
      p.psn  = psn.gsub(/_/,'-')
    end
    unless place.errors.blank?
      puts "error while creating place: #{place.errors}"
    end
  }
end
  

def create_tugs 
  ["ARIEL 1/2", "LEDA 1/2", "ICAR 1/2", "ARIEL", "VEGA", "DIONA", "EUROPA",
   "ICAR", "LEDA", "LUNA", "DUBE", "FEKDA", "KOKAB", "MIZAR", "FEBA", "NEREIDA 1", 
   "PILOT 1", "AQUANAUT", "KB 9", "KB 10", "KB 12", "KB 13", "FL. ARS.",
   "SANMAR XIV", "SANMAR XIII", "SANMAR XII", "GOLDEN EAGLE", "EUROPA 1"].each { |name|
    tug = Tug.create( :name => name )
    unless tug.errors.blank?
      puts "error while creating Tug: #{name} -> #{tug.errors}"
    end
  }
end

create_flags()
# parse_and_create_vessels()  # deprecated
yaml2ships()
create_criterias()
create_users()
create_tugs()
create_places()
