<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alpine.js Directory</title>
    <script src="https://cdn.jsdelivr.net/npm/alpinejs@3.12.0/dist/cdn.min.js" defer></script>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
            color: #333;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f0f0f0;
        }
        h1 {
            text-align: center;
            color: #2c3e50;
        }
        .container {
            display: flex;
            gap: 20px;
        }
        .sidebar {
            flex: 1;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        .content {
            flex: 3;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            cursor: pointer;
            padding: 8px 12px;
            margin-bottom: 5px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        li:hover {
            background-color: #f0f0f0;
        }
        li.active {
            background-color: #3498db;
            color: white;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }
        .item {
            background-color: #fff;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .item:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0,0,0,0.15);
        }
        .item h3 {
            margin-top: 0;
            color: #2c3e50;
            font-size: 1.4em;
            border-bottom: 2px solid #3498db;
            padding-bottom: 10px;
        }
        .item p {
            margin: 10px 0;
        }
        .item a {
            /* color: #3498db; */
            text-decoration: none;
            transition: color 0.3s;
        }
        .item a:hover {
            color: #2980b9;
        }
        .item-links {
            margin-top: 15px;
            display: flex;
            gap: 10px;
        }
        .item-link {
            display: inline-block;
            padding: 5px 10px;
            background-color: #3498db;
            color: white;
            border-radius: 4px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        .item-link:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body x-data="directory()" x-init="init()">
    <h1>Directory</h1>
    <input type="text" x-model="searchQuery" placeholder="Search directory..." aria-label="Search directory">

    <div class="container">
        <!-- Sidebar for categories -->
        <div class="sidebar">
            <ul>
                <li @click="selectCategory(null)" :class="{'active': selectedCategory === null}">
                    All
                </li>
                <template x-for="category in categories" :key="category">
                    <li @click="selectCategory(category)" 
                        :class="{'active': selectedCategory === category}" 
                        x-text="category">
                    </li>
                </template>
            </ul>
        </div>

        <!-- Content to display items -->
        <div class="content">
            <!-- Loading Indicator -->
            <template x-if="isLoading">
                <p>Loading...</p>
            </template>

            <!-- No Results Found -->
            <template x-if="!isLoading && filteredItems.length === 0">
                <p>No results found.</p>
            </template>

            <!-- Items Display -->
            <template x-for="item in filteredItems" >
                <div class="item">
                    <h3 x-text="item.title"></h3>
                    <p x-text="item.locations"></p>
                    <div class="item-links">
                        <template x-if="item.web">
                            <a class="item-link" :href="item.web" target="_blank">Website</a>
                        </template>
                        <template x-if="item.facebook">
                            <template x-for="(facebookLink, index) in item.facebook.split(',')" :key="index">
                                <a class="item-link" :href="facebookLink.trim()" target="_blank">Facebook</a>
                            </template>
                        </template>
                    </div>
                </div>
            </template>
        </div>
    </div>

    <script>
    function directory() {
        return {
            searchQuery: '',
            selectedCategory: null,
            categories: [],
            items: [],
            isLoading: true,

            async init() {
                try {
                    const response = await fetch('data.php');
                    
                    if (!response.ok) {
                        throw new Error('Network response was not ok');
                    }
                    const data = await response.json();
                    console.log("Data received:", data);

                    // Ensure categories is always an array
                    this.categories = Array.isArray(data.categories) ? data.categories : [];
                    console.log("Categories:", this.categories);

                    // Ensure items is always an array
                    this.items = Array.isArray(data.items) ? data.items : [];
                    // data.items.forEach(ele => {
                    //     console.log(ele);
                    //     this.items = ele
                    // });
                    console.log("Items:", this.items);
                } catch (error) {
                    console.error('Error fetching data:', error);
                } finally {
                    this.isLoading = false;
                }
            },

            selectCategory(category) {
                this.selectedCategory = category;
            },

            get filteredItems() {
                if (this.isLoading) return [];
                const query = this.searchQuery.toLowerCase();
                return this.items.filter(item => {
                    const matchesSearch = item.title.toLowerCase().includes(query) || item.locations.toLowerCase().includes(query);
                    const matchesCategory = this.selectedCategory ? item.category === this.selectedCategory : true;
                    return matchesSearch && matchesCategory;
                });
            },
        };
    }
    </script>
</body>
</html>