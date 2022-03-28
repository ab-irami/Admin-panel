const rootRoute = '/';

const overViewPageDisplayName = 'Overview';
const overViewPageRoute = '/overview';

const driversPageDisplayName = 'Drivers';
const driversPageRoute = '/drivers';

const clientsPageDisplayName = 'Clients';
const clientsPageRoute = '/clients';

const authenticationPageDisplayName = 'Log Out';
const authenticationPageRoute = '/auth';

class MenuItems {
  final String? name;
  final String? route;

  MenuItems(this.name, this.route);
}

List<MenuItems> sideMenuItems = [
  MenuItems(overViewPageDisplayName, overViewPageRoute),
  MenuItems(driversPageDisplayName, driversPageRoute),
  MenuItems(clientsPageDisplayName, clientsPageRoute),
  MenuItems(authenticationPageDisplayName, authenticationPageRoute),
];
