import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spa_booking/models/service.dart';
import 'package:spa_booking/models/spa.dart';
class ListSpa{
  List<Spa> _list=[];
  List<Service> _allService=[];
  ListSpa(){
    Spa spa1=Spa(1,"Keangnam Spa",5.0,"50 Hậu giang, Q6",0.2,97,"0777997001","x1.jpg");
    spa1.services.add(Service("Aromatic",4.0,225.0,"Massage",25,spa1,2,"x2.jpg"));
    spa1.services.add(Service("Swedish",4.0,170.0,"Massage",30,spa1,5,"x3.jpg"));
    spa1.services.add(Service("Shoulder",3.0,70.0,"Massage",25,spa1,6,"x4.jpg"));
    spa1.services.add(Service("Thai Massage",4.0,250.0,"Massage",20,spa1,9,"x5.jpg"));
    spa1.services.add(Service("Original",4.0,89.0,"Facial",0,spa1,10,"x6.jpg"));
    spa1.services.add(Service("Eliminate toxins",4.0,100.0,"Facial",0,spa1,11,"x7.jpg"));
    spa1.services.add(Service("Gasde technology",5.0,115.0,"Facial",0,spa1,12,"x8.jpg"));
    spa1.services.add(Service("Detox Co2 DJ Carbon",5.0,128.0,"Facial",35,spa1,13,"x9.jpg"));
    spa1.services.add(Service("Nano implant",4.0,135.0,"Facial",0,spa1,14,"x10.jpg"));
    spa1.services.add(Service("Special heirloom",4.0,210.0,"Facial",0,spa1,15,"x11.jpg"));
    spa1.services.add(Service("Original",4.0,89.0,"Sauna",0,spa1,16,"l31.jpg"));
    spa1.services.add(Service("Special",4.0,100.0,"Sauna",0,spa1,17,"l31.jpg"));
    spa1.services.add(Service("Private (max 6 people)",5.0,200.0,"Sauna",0,spa1,18,"x13.jpg"));
    spa1.services.add(Service("Original",5.0,248.0,"Hot stone therapy",0,spa1,19,"x14.jpg"));
    spa1.services.add(Service("Special",5.0,280.0,"Hot stone therapy",40,spa1,20,"x14.jpg"));
    Spa spa2=Spa(2,"Beauty & Spa",5.0,"12 tỉnh lộ 10, Q6",6.0,89,"0946788818","l17.jpg");
    spa2.services.add(Service("Aromatic",4.0,150.0,"Massage",0,spa2,21,"l18.jpg"));
    spa2.services.add(Service("Swedish",5.0,100.0,"Massage",0,spa2,23,"l19.jpg"));
    spa2.services.add(Service("Shoulder",3.0,70.0,"Massage",0,spa2,25,"l20.jpg"));
    spa2.services.add(Service("Shoulder Special",4.0,90.0,"Massage",15,spa2,26,"l21.jpg"));
    spa2.services.add(Service("Thai Massage",4.0,220.0,"Massage",0,spa2,27,"l22.jpg"));
    spa2.services.add(Service("Original",4.0,89.0,"Facial",0,spa2,28,"l23.jpg"));
    spa2.services.add(Service("Eliminate toxins",4.0,100.0,"Facial",0,spa2,29,"l24.jpg"));
    spa2.services.add(Service("Gasde technology",5.0,115.0,"Facial",0,spa2,30,"l25.jpg"));
    spa2.services.add(Service("Detox Co2 DJ Carbon",5.0,128.0,"Facial",0,spa2,31,"l26.jpg"));
    spa2.services.add(Service("Nano implant",4.0,135.0,"Facial",0,spa2,32,"l27.jpg"));
    spa2.services.add(Service("Special heirloom",4.0,210.0,"Facial",0,spa2,33,"28.jpg"));
    spa2.services.add(Service("Original",4.0,89.0,"Sauna",0,spa2,34,"l29.jpg"));
    spa2.services.add(Service("Special",4.0,100.0,"Sauna",0,spa2,35,"l30.jpg"));
    spa2.services.add(Service("Original",5.0,248.0,"Hot stone therapy",0,spa2,37,"l32.jpg"));
    spa2.services.add(Service("Special",5.0,280.0,"Hot stone therapy",0,spa2,38,"l33.jpg"));
    Spa spa3=Spa(3,"Senriver Spa",5.0,"83 Nguyễn Văn Luông, Q6",4.0,73,"0987654321","3.jpg");
    spa3.services.add(Service("Aromatic",4.0,150.0,"Massage",0,spa3,39,"4.jpg"));
    spa3.services.add(Service("Swedish",5.0,150.0,"Massage",0,spa3,42,"5.jpg"));
    spa3.services.add(Service("Shoulder",4.0,90.0,"Massage",0,spa3,44,"6.jpg"));
    spa3.services.add(Service("Thai Massage",3.0,220.0,"Massage",0,spa3,45,"7.jpg"));
    spa3.services.add(Service("Original",4.0,89.0,"Facial",0,spa3,46,"8.jpg"));
    spa3.services.add(Service("Eliminate toxins",4.0,100.0,"Facial",0,spa3,47,"9.jpg"));
    spa3.services.add(Service("Detox Co2 DJ Carbon",5.0,128.0,"Facial",0,spa3,49,"10.jpg"));
    spa3.services.add(Service("Nano implant",4.0,135.0,"Facial",0,spa3,50,"11.jpg"));
    spa3.services.add(Service("Special heirloom",4.0,210.0,"Facial",0,spa3,51,"12.jpg"));
    spa3.services.add(Service("Original",4.0,89.0,"Sauna",0,spa3,52,"13.jpg"));
    spa3.services.add(Service("Special",4.0,100.0,"Sauna",0,spa3,53,"14.jpg"));
    spa3.services.add(Service("King",5.0,200.0,"Sauna",0,spa3,54,"15.jpg"));
    spa3.services.add(Service("Original",5.0,248.0,"Hot stone therapy",0,spa3,55,"l33.jpg"));
    spa3.services.add(Service("Special",5.0,280.0,"Hot stone therapy",0,spa3,56,"16.jpg"));
    Spa spa4=Spa(4,"Elegant Spa",5.0,"150 Hồng Bàng, Q5",4.2,62,"0912479586","17.jpg");
    spa4.services.add(Service("Aromatic",4.0,225.0,"Massage",0,spa4,58,"18.jpg"));
    spa4.services.add(Service("Swedish",5.0,100.0,"Massage",0,spa4,59,"19.jpg"));
    spa4.services.add(Service("Shoulder",3.0,70.0,"Massage",0,spa4,61,"20.jpg"));
    spa4.services.add(Service("Thai Massage",3.0,220.0,"Massage",0,spa4,63,"21.jpg"));
    spa4.services.add(Service("Original",4.0,89.0,"Facial",0,spa4,64,"22.jpg"));
    spa4.services.add(Service("Eliminate toxins",4.0,100.0,"Facial",0,spa4,65,"23.jpg"));
    spa4.services.add(Service("Gasde technology",5.0,115.0,"Facial",0,spa4,66,"24.jpg"));
    spa4.services.add(Service("Detox Co2 DJ Carbon",5.0,128.0,"Facial",0,spa4,67,"25.jpg"));
    spa4.services.add(Service("Nano implant",4.0,135.0,"Facial",0,spa4,68,"26.jpg"));
    spa4.services.add(Service("Special heirloom",4.0,210.0,"Facial",0,spa4,69,"27.jpg"));
    spa4.services.add(Service("Original",4.0,89.0,"Sauna",0,spa4,70,"28.jpg"));
    spa4.services.add(Service("Special",4.0,100.0,"Sauna",50,spa4,71,"29.jpg"));
    spa4.services.add(Service("Private (max 6 people)",4.0,200.0,"Sauna",0,spa4,72,"30.jpg"));
    spa4.services.add(Service("Original",5.0,248.0,"Hot stone therapy",0,spa4,73,"31.jpg"));
    spa4.services.add(Service("Special",5.0,280.0,"Hot stone therapy",0,spa4,74,"32.jpg"));
    Spa spa5=Spa(5,"Andeva Spa",5.0,"127 Nguyễn Trãi, Q5",0.7,54,"0913589885","33.jpg");
    spa5.services.add(Service("Aromatic",4.0,150.0,"Massage",0,spa5,75,"34.jpg"));
    spa5.services.add(Service("Swedish",5.0,100.0,"Massage",0,spa5,77,"35.jpg"));
    spa5.services.add(Service("Shoulder",4.0,90.0,"Massage",30,spa5,80,"36.jpg"));
    spa5.services.add(Service("Thai Massage",3.0,220.0,"Massage",10,spa5,81,"37.jpg"));
    spa5.services.add(Service("Original",4.0,89.0,"Facial",0,spa5,82,"38.jpg"));
    spa5.services.add(Service("Eliminate toxins",4.0,100.0,"Facial",0,spa5,83,"39.jpg"));
    spa5.services.add(Service("Gasde technology",5.0,115.0,"Facial",0,spa5,84,"40.jpg"));
    spa5.services.add(Service("Detox Co2 DJ Carbon",5.0,128.0,"Facial",0,spa5,85,"41.jpg"));
    spa5.services.add(Service("Nano implant",4.0,135.0,"Facial",0,spa5,86,"42.jpg"));
    spa5.services.add(Service("Special heirloom",4.0,210.0,"Facial",0,spa5,87,"43.jpg"));
    spa5.services.add(Service("Original",4.0,89.0,"Sauna",0,spa5,88,"44.jpg"));
    spa5.services.add(Service("Special",4.0,100.0,"Sauna",0,spa5,89,"45.jpg"));
    spa5.services.add(Service("Private (max 6 people)",3.0,200.0,"Sauna",0,spa5,90,"46.jpg"));
    spa5.services.add(Service("Original",5.0,248.0,"Hot stone therapy",0,spa5,91,"47.jpg"));
    spa5.services.add(Service("Special",5.0,280.0,"Hot stone therapy",0,spa5,92,"48.png"));
    Spa spa6=Spa(6,"Trà My Beauty Spa",5.0,"27 Lê Văn Chí, Q6",1.3,19,"0933539713","49.jpg");
    spa6.services.add(Service("Aromatic",4.0,225.0,"Massage",0,spa6,94,"50.jpg"));
    spa6.services.add(Service("Swedish",5.0,150.0,"Massage",0,spa6,96,"51.jpg"));
    spa6.services.add(Service("Shoulder",4.0,90.0,"Massage",30,spa6,98,"52.jpg"));
    spa6.services.add(Service("Thai Massage",3.0,220.0,"Massage",10,spa6,99,"53.jpg"));
    spa6.services.add(Service("Original",4.0,89.0,"Facial",0,spa6,100,"54.jpg"));
    spa6.services.add(Service("Eliminate toxins",4.0,100.0,"Facial",0,spa6,101,"55.jpg"));
    spa6.services.add(Service("Gasde technology",5.0,115.0,"Facial",0,spa6,102,"56.jpg"));
    spa6.services.add(Service("Detox Co2 DJ Carbon",5.0,128.0,"Facial",0,spa6,103,"57.jpg"));
    spa6.services.add(Service("Nano implant",4.0,135.0,"Facial",0,spa6,104,"58.jpg"));
    spa6.services.add(Service("Special heirloom",4.0,210.0,"Facial",0,spa6,105,"59.jpg"));
    spa6.services.add(Service("Special",4.0,100.0,"Sauna",0,spa6,107,"60.jpg"));
    spa6.services.add(Service("Primal",4.0,200.0,"Sauna",0,spa6,108,"61.jpg"));
    spa6.services.add(Service("Original",5.0,248.0,"Hot stone therapy",0,spa6,109,"62.jpg"));
    spa6.services.add(Service("Special",5.0,280.0,"Hot stone therapy",0,spa6,110,"63.jpg"));
    Spa spa7=Spa(7,"Green Lotus Spa",5.0,"80 Lê Văn Chí, Q6",1.6,17,"0977778477","b1.jpg");
    spa7.services.add(Service("Aromatic",4.0,150.0,"Massage",0,spa7,111,"b2.jpg"));
    spa7.services.add(Service("Swedish",5.0,100.0,"Massage",0,spa7,113,"b3.jpg"));
    spa7.services.add(Service("Shoulder",4.0,90.0,"Massage",0,spa7,116,"b4.jpg"));
    spa7.services.add(Service("Thai Massage",3.0,220.0,"Massage",0,spa7,117,"b5.jpg"));
    spa7.services.add(Service("Original",4.0,89.0,"Facial",0,spa7,118,"b6.png"));
    spa7.services.add(Service("Eliminate toxins",4.0,100.0,"Facial",0,spa7,119,"b7.jpg"));
    spa7.services.add(Service("Gasde technology",5.0,115.0,"Facial",0,spa7,120,"b8.jpg"));
    spa7.services.add(Service("Detox Co2 DJ Carbon",5.0,128.0,"Facial",0,spa7,121,"b9.png"));
    spa7.services.add(Service("Nano implant",4.0,135.0,"Facial",0,spa7,122,"b10.jpeg"));
    spa7.services.add(Service("Special heirloom",4.0,210.0,"Facial",0,spa7,123,"b11.png"));
    spa7.services.add(Service("Original",4.0,89.0,"Sauna",0,spa7,124,"b12.jpg"));
    spa7.services.add(Service("Special",4.0,100.0,"Sauna",0,spa7,125,"b12.jpg"));
    spa7.services.add(Service("Private (max 6 people)",3.0,200.0,"Sauna",0,spa7,126,"b13.jpg"));
    spa7.services.add(Service("Original",5.0,248.0,"Hot stone therapy",0,spa7,127,"b14.jpg"));
    spa7.services.add(Service("Special",5.0,280.0,"Hot stone therapy",0,spa7,128,"b15.jpg"));
    Spa spa8=Spa(8,"St. Clair Spa",5.0,"50 Vành Đai Trong, Q Bình Tân",0.5,23,"0913633474","b16.png");
    spa8.services.add(Service("Aromatic",4.0,225.0,"Massage",0,spa8,130,"b17.jpg"));
    spa8.services.add(Service("Swedish",5.0,100.0,"Massage",0,spa8,131,"b18.jpg"));
    spa8.services.add(Service("Shoulder",4.0,90.0,"Massage",0,spa8,134,"b19.jpg"));
    spa8.services.add(Service("Thai Massage",3.0,220.0,"Massage",0,spa8,135,"b20.jpg"));
    spa8.services.add(Service("Original",4.0,89.0,"Facial",0,spa8,136,"b21.png"));
    spa8.services.add(Service("Eliminate toxins",4.0,100.0,"Facial",0,spa8,137,"b22.png"));
    spa8.services.add(Service("Gasde technology",5.0,115.0,"Facial",0,spa8,138,"b23.png"));
    spa8.services.add(Service("Detox Co2 DJ Carbon",5.0,128.0,"Facial",0,spa8,139,"b24.jpg"));
    spa8.services.add(Service("Nano implant",4.0,135.0,"Facial",0,spa8,140,"b25.jpg"));
    spa8.services.add(Service("Special heirloom",4.0,210.0,"Facial",0,spa8,141,"b26.jpg"));
    spa8.services.add(Service("Original",4.0,89.0,"Sauna",0,spa8,142,"b27.jpg"));
    spa8.services.add(Service("Special",4.0,100.0,"Sauna",0,spa8,143,"b28.jpg"));
    spa8.services.add(Service("Private (max 6 people)",3.0,200.0,"Sauna",0,spa8,144,"b29.jpg"));
    spa8.services.add(Service("Original",5.0,248.0,"Hot stone therapy",0,spa8,145,"b46.png"));
    spa8.services.add(Service("Special",5.0,280.0,"Hot stone therapy",0,spa8,146,"b31.jpg"));
    Spa spa9=Spa(9,"Sun Spa",5.0,"297 Bình Tiên, Q6",2.9,47,"0912545211","b32.jpg");
    spa9.services.add(Service("Aromatic",4.0,150.0,"Massage",0,spa9,147,"b33.png"));
    spa9.services.add(Service("Swedish",5.0,100.0,"Massage",0,spa9,149,"b34.jpg"));
    spa9.services.add(Service("Shoulder",4.0,90.0,"Massage",0,spa9,152,"b35.jpg"));
    spa9.services.add(Service("Thai Massage",3.0,220.0,"Massage",0,spa9,153,"b36.webp"));
    spa9.services.add(Service("Original",4.0,89.0,"Facial",0,spa9,154,"b37.jpg"));
    spa9.services.add(Service("Eliminate toxins",4.0,100.0,"Facial",0,spa9,155,"b38.jpg"));
    spa9.services.add(Service("Gasde technology",5.0,115.0,"Facial",0,spa9,156,"b39.jpg"));
    spa9.services.add(Service("Detox Co2 DJ Carbon",5.0,128.0,"Facial",0,spa9,157,"b40.png"));
    spa9.services.add(Service("Nano implant",4.0,135.0,"Facial",0,spa9,158,"b41.png"));
    spa9.services.add(Service("Special heirloom",4.0,210.0,"Facial",0,spa9,159,"b42.jpg"));
    spa9.services.add(Service("Original",4.0,89.0,"Sauna",0,spa9,160,"b43.jpg"));
    spa9.services.add(Service("Special",4.0,100.0,"Sauna",0,spa9,161,"b44.jpg"));
    spa9.services.add(Service("Private (max 6 people)",3.0,200.0,"Sauna",0,spa9,162,"b45.jpg"));
    spa9.services.add(Service("Original",5.0,248.0,"Hot stone therapy",0,spa9,163,"b46.png"));
    spa9.services.add(Service("Special",5.0,280.0,"Hot stone therapy",0,spa9,164,"b47.jpg"));
    Spa spa10=Spa(10,"Gold Spa",5.0,"23 Lê Đình Cẩn, Q Bình Tân",0.1,45,"0912522298","b48.png");
    spa10.services.add(Service("30' Aromatic",4.0,150.0,"Massage",0,spa10,165,"b49.jpg"));
    spa10.services.add(Service("Thai Massage",4.0,220.0,"Massage",0,spa10,166,"b50.jpg"));
    spa10.services.add(Service("Original",4.0,89.0,"Facial",0,spa10,167,"b51.jpg"));
    spa10.services.add(Service("Eliminate toxins",4.0,100.0,"Facial",0,spa10,168,"b52.jpg"));
    spa10.services.add(Service("Gasde technology",5.0,115.0,"Facial",0,spa10,169,"b53.jpg"));
    spa10.services.add(Service("Detox Co2 DJ Carbon",5.0,128.0,"Facial",0,spa10,170,"b54.jpeg"));
    spa10.services.add(Service("Nano implant",4.0,135.0,"Facial",0,spa10,171,"b55.jpg"));
    spa10.services.add(Service("Special heirloom",4.0,210.0,"Facial",0,spa10,172,"b56.jpg"));
    spa10.services.add(Service("Original",4.0,89.0,"Sauna",0,spa10,173,"b57.jpg"));
    spa10.services.add(Service("Special",4.0,100.0,"Sauna",0,spa10,174,"b58.jpg"));
    spa10.services.add(Service("Best Service",5.0,200.0,"Sauna",0,spa10,175,"b59.jpg"));
    spa10.services.add(Service("Original",5.0,248.0,"Hot stone therapy",0,spa9,163,"b60.png"));


    list.add(spa1);
    list.add(spa2);
    list.add(spa3);
    list.add(spa4);
    list.add(spa5);
    list.add(spa6);
    list.add(spa7);
    list.add(spa8);
    list.add(spa9);
    list.add(spa10);

    //set all Service
    list.forEach((Spa spa) {
      spa.services.forEach((Service service) {
        allService.add(service);
      });
    });
    
  }
  List<Spa> get list => _list;
  List<Service> get allService => _allService;
  List<Service> getByDistance(){
    List<Spa> spa=[];
    List<Service> result=[];
    spa.addAll(list);
    spa.sort((Spa s1, Spa s2){
      return s1.distance.compareTo(s2.distance);
    });
    spa.forEach((Spa x) {
      x.services.forEach((Service service) {
        result.add(service);
      });
    });
    return result;
  }
  List<Service> getByRate() {
    List<Service> result= [];
    result.addAll(allService);
    result.sort((Service s1, Service s2) {
      return s2.rate.compareTo(s1.rate);
    });
    return result;
  }
  List<Service> getBySale() {
    List<Service> result=[];
    result.addAll(allService);
    result.removeWhere((element) => element.sale == 0);
    result.sort(( s1,  s2) {
      return s2.sale.compareTo(s1.sale);
    });
    return result;
  }
  List<Service> getListById(List<String> ids) {
    List<Service> result=[];
    for(Service service in allService){
      for(String id in ids){
        if(int.parse(id) == service.id){
          result.add(service);
          break;
        }
      }
    }
    return result;
  }

}