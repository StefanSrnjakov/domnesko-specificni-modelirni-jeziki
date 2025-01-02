const appConfig = {
    title: "Lost and Found",
    description: "An application to track lost and found items.",
    host: "http://localhost:3001",
    port: "3001",
    theme: {
        mode: "light",
        primaryColor: "#1976D2",
        secondaryColor: "#FF9800",
        primaryBtnColor: "#0D47A1",
        secondaryBtnColor: "#FFC107",
        warningBtnColor: "#F44336",
        errorBtnColor: "#D32F2F"
    },
    layout: {
        showMenu: true,
        showHeader: true,
        showFooter: false
    },
    api: {
        base: "http://localhost:3001/api",
        endpoints: {
            get: {
                lostItems: "items",
                foundItems: "items",
                profile: "profile"
            },
            post: {
                reportLost: "items",
                reportFound: "items",
                login: "login",
                register: "register"
            }
        }
    },
    pages: {
        Home: {
            url: "/",
            title: "Welcome to the Lost and Found Platform",
            content: `
Our platform helps people report and find lost items across various locations. Whether you've lost something precious or found an item and want to return it to its rightful owner, this platform makes it simple and secure to track and manage lost and found items.

## Features:
* Report lost or found items easily.
* Browse lists of reported lost and found items.
* Connect with others to return found items to their owners.

### How to Get Started:
1. Publish a lost item or report a found item.
2. Browse lost or found items.
3. Manage your profile and keep track of your reports.
`,
            quickLinks: {
                view: "grid",
                links: {
                    reportLostItem: {
                        title: 'Report Lost Items',
                        description: 'Easily create a report for your lost item with details and location.',
                        image: 'lost-item-home1.png',
                        link: '/add-item',
                    },
                    reportFoundItem: {
                        title: 'Report That You Found an Item',
                        description: 'You found something, report here.',
                        image: 'lost-item-home4.png',
                        link: '/add-item',
                    },
                    listLostItem: {
                        title: 'Look for Lost Items',
                        description: 'Check if someone published the item you found.',
                        image: 'lost-item-home3.png',
                        link: '/lost-items',
                    },
                    listFoundItem: {
                        title: 'Find Lost Items',
                        description: 'Check if someone reported your lost item.',
                        image: 'lost-item-home2.png',
                        link: '/found-items',
                    }
                }
            }
        },
        LostItems: {
            header: "Here for Lost Items",
            url: "/lost-items",
            description: `
                Browse through items that have been reported as lost. Use the filters to narrow down the list by location or category, and find what you're looking for more efficiently.
            `,
            data: "lostItems",
            view: "list"
        },
        FoundItems: {
            header: "Here for Found Items",
            url: "/found-items",
            description: `
                Browse through items that have been reported as found. Use the filters to narrow down the list by location or category, and find the item you've lost.
            `,
            data: "lostItems",
            view: "list"
        },
        ReportLost: {
            url: "/report-lost",
            post: "reportLost"
        },
        ReportFound: {
            url: "/report-found",
            post: "reportFound"
        },
        About: {
            url: "/about",
            title: "About the Lost and Found Application",
            content: `
                # About Us

                The Lost and Found application was created to help people recover lost items or return found items with ease. We aim to provide a **simple**, **user-friendly** platform to post details of lost or found objects, categorize them, and keep track of the search and recovery process.

                ## Why Use This App?
                * Convenient way to report lost or found items.
                * Easy to browse through categorized lost/found items.
                * Secure platform to ensure privacy and protection of personal information.

                ## How It Works:
                1. **Report Items:** Lost an item or found something? Post the details in just a few steps.
                2. **Browse Listings:** Browse through a categorized list of lost and found items to find a match.
                3. **Connect with Owners:** Once you find a match, contact the item owner to return the item.

                Join us in making the world a better place, where lost things can find their way back home!
            `
        }
    },
    components: {
        popUps: {
            error: {
                showHeader: true,
                closeIcon: true,
                closeButtonSide: "right"
            },
            confirmation: {
                showHeader: true,
                closeIcon: true
            }
        },
        modals: {
            profile: {
                showHeader: true,
                allowDeleteProfile: false,
                showDummyImage: true
            }
        },
        menu: {
            showLogo: true,
            type: "sidebar"
        }
    }
};

export default appConfig;
