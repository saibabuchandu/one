
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root{
            --bg:#f6f7fb;--card:#fff;--text:#171923;--muted:#687083;
            --primary:#635bff;--primary-dark:#5148e8;--soft:#eeedff;
            --success:#16a34a;--danger:#ef4444;--border:#e7e9f0;
            --shadow:0 8px 30px rgba(25,32,56,.07);
            --shadow-lg:0 18px 55px rgba(25,32,56,.14);
            --radius:18px;--radius-sm:12px;--container:1240px;
            --transition:.22s ease;
        }
        *{box-sizing:border-box;margin:0;padding:0}
        html{scroll-behavior:smooth;scroll-padding-top:90px}
        body{font-family:Inter,system-ui,-apple-system,sans-serif;background:var(--bg);color:var(--text);line-height:1.5}
        body.no-scroll{overflow:hidden}
        a{text-decoration:none;color:inherit} button,input{font:inherit} button{cursor:pointer;border:0}
        img{display:block;max-width:100%}.container{width:min(100% - 32px,var(--container));margin:auto}
        .muted{color:var(--muted)}
        .btn{display:inline-flex;align-items:center;justify-content:center;gap:9px;padding:12px 19px;border-radius:12px;font-weight:700;transition:var(--transition)}
        .btn-primary{background:var(--primary);color:#fff}.btn-primary:hover{background:var(--primary-dark);transform:translateY(-1px);box-shadow:0 8px 20px rgba(99,91,255,.25)}
        .btn-light{background:#fff;color:var(--text);border:1px solid var(--border)}.btn-light:hover{border-color:#cfd2df;background:#fafaff}
        .icon-btn{position:relative;width:42px;height:42px;border-radius:12px;display:grid;place-items:center;color:#596174;background:transparent;transition:var(--transition)}
        .icon-btn:hover{background:#f0f1f7;color:var(--text)}
        .badge-count{position:absolute;top:-3px;right:-3px;min-width:19px;height:19px;padding:0 5px;border-radius:20px;background:var(--danger);color:#fff;font-size:10px;font-weight:800;display:grid;place-items:center;border:2px solid #fff}

        /* Header */
        header{position:sticky;top:0;z-index:100;background:rgba(255,255,255,.94);backdrop-filter:blur(18px);border-bottom:1px solid var(--border)}
        .header-inner{min-height:72px;display:grid;grid-template-columns:auto 1fr auto;align-items:center;gap:28px}
        .brand{display:flex;align-items:center;gap:10px;font-size:21px;font-weight:800;letter-spacing:-.5px}
        .brand i{color:var(--primary);font-size:23px}.accent{color:var(--primary)}
        .main-nav ul{display:flex;justify-content:center;gap:4px;list-style:none}
        .main-nav a{display:flex;gap:7px;align-items:center;padding:9px 13px;border-radius:10px;color:var(--muted);font-size:14px;font-weight:600}
        .main-nav a:hover,.main-nav a.active{color:var(--primary);background:var(--soft)}
        .header-right{display:flex;align-items:center;gap:5px}
        .search-wrap{width:min(300px,30vw);height:42px;display:flex;align-items:center;gap:9px;padding:0 13px;background:#f3f4f8;border:1px solid transparent;border-radius:12px}
        .search-wrap:focus-within{background:#fff;border-color:#b9b5ff;box-shadow:0 0 0 4px rgba(99,91,255,.08)}
        .search-wrap input{width:100%;border:0;outline:0;background:transparent;font-size:13px;color:var(--text)}
        .search-wrap i{color:#7c8495}
        .mobile-toggle{display:none}

        /* Hero */
        .hero{margin:22px auto 0;border-radius:24px;overflow:hidden;min-height:470px;position:relative;background:#171a2d}
        .hero::before{content:"";position:absolute;inset:0;background:linear-gradient(90deg,rgba(18,20,38,.96),rgba(18,20,38,.68),rgba(18,20,38,.18)),url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85') center/cover}
        .hero-content{position:relative;z-index:1;max-width:650px;padding:72px 0 76px;color:#fff}
        .hero .badge{display:inline-flex;gap:7px;align-items:center;background:rgba(255,255,255,.12);border:1px solid rgba(255,255,255,.2);padding:7px 12px;border-radius:30px;font-size:12px;font-weight:700;margin-bottom:18px}
        .hero h1{font-size:clamp(36px,5vw,62px);line-height:1.04;letter-spacing:-2.2px;margin-bottom:17px}
        .hero p{max-width:570px;color:rgba(255,255,255,.78);font-size:16px;margin-bottom:28px}
        .hero-actions{display:flex;gap:10px;flex-wrap:wrap}
        .hero .btn-light{background:#fff;border-color:#fff}.hero .btn-light:hover{background:#f1f2ff}
        .hero-note{display:flex;gap:18px;flex-wrap:wrap;margin-top:28px;color:rgba(255,255,255,.7);font-size:12px}
        .hero-note span{display:flex;align-items:center;gap:6px}.hero-note i{color:#a9a4ff}

        /* Sections */
        .section{padding:56px 0}.section-header{display:flex;align-items:end;justify-content:space-between;gap:20px;margin-bottom:22px}
        .eyebrow{color:var(--primary);font-size:12px;text-transform:uppercase;letter-spacing:.12em;font-weight:800;margin-bottom:5px}
        .section h2{font-size:28px;letter-spacing:-.7px}.section-subtitle{color:var(--muted);font-size:14px;margin-top:4px}
        .view-all{color:var(--primary);font-size:13px;font-weight:800;display:flex;align-items:center;gap:6px}

        /* Categories */
        .categories-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:12px}
        .cat-card{background:var(--card);border:1px solid var(--border);border-radius:16px;padding:20px 10px;text-align:center;transition:var(--transition);cursor:pointer}
        .cat-card:hover,.cat-card.selected{border-color:#c8c4ff;background:#fbfbff;transform:translateY(-2px);box-shadow:var(--shadow)}
        .cat-card .icon-wrap{width:52px;height:52px;border-radius:15px;background:var(--soft);color:var(--primary);display:grid;place-items:center;margin:0 auto 10px;font-size:21px}
        .cat-card h4{font-size:13px}.cat-card .count{font-size:11px;color:var(--muted);margin-top:3px}

        /* Product toolbar */
        .product-toolbar{display:flex;gap:10px;align-items:center;justify-content:space-between;margin-bottom:18px;flex-wrap:wrap}
        .filter-pills{display:flex;gap:7px;flex-wrap:wrap}.filter-pill{padding:8px 12px;border-radius:10px;background:#fff;border:1px solid var(--border);font-size:12px;font-weight:700;color:var(--muted)}
        .filter-pill.active,.filter-pill:hover{background:var(--soft);color:var(--primary);border-color:#c8c4ff}
        .sort-select{border:1px solid var(--border);background:#fff;border-radius:10px;padding:9px 12px;color:var(--muted);font-size:12px;outline:0}

        /* Products */
        .products-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:18px}
        .product-card{background:#fff;border:1px solid var(--border);border-radius:17px;overflow:hidden;display:flex;flex-direction:column;transition:var(--transition);position:relative}
        .product-card:hover{transform:translateY(-4px);box-shadow:var(--shadow-lg);border-color:#d9dbeb}
        .product-card .img-wrap{aspect-ratio:1/1;background:#f2f3f7;position:relative;overflow:hidden}
        .product-card .img-wrap img{width:100%;height:100%;object-fit:cover;transition:.35s ease}.product-card:hover .img-wrap img{transform:scale(1.035)}
        .product-card .badge{position:absolute;left:10px;top:10px;background:#171923;color:#fff;border-radius:8px;padding:5px 8px;font-size:10px;font-weight:800}
        .product-card .badge.sale{background:#fff1cc;color:#9a6500}
        .wish-btn{position:absolute;right:10px;top:10px;width:34px;height:34px;border-radius:10px;background:rgba(255,255,255,.94);display:grid;place-items:center;color:#6c7485;transition:var(--transition)}
        .wish-btn:hover,.wish-btn.active{color:var(--danger);background:#fff;box-shadow:0 4px 12px rgba(0,0,0,.08)}
        .product-card .body{padding:14px 15px 8px;display:flex;flex-direction:column;gap:5px;flex:1}
        .category-tag{font-size:10px;color:#8b92a2;text-transform:uppercase;letter-spacing:.08em;font-weight:800}
        .product-card h5{font-size:14px;line-height:1.35;min-height:38px}
        .price-row{display:flex;align-items:center;gap:8px;margin-top:2px}.price{font-size:18px;font-weight:800}.old-price{font-size:12px;color:#9aa1af;text-decoration:line-through}
        .rating{font-size:11px;color:#f59e0b;display:flex;gap:5px;align-items:center}.rating span{color:#89909e}
        .product-card .footer{padding:8px 15px 15px}.add-btn{width:100%;padding:10px;border-radius:10px;background:#171923;color:#fff;font-size:12px;font-weight:800;display:flex;align-items:center;justify-content:center;gap:7px;transition:var(--transition)}
        .add-btn:hover{background:var(--primary)}.add-btn.added{background:var(--success)}
        .empty-state{grid-column:1/-1;text-align:center;background:#fff;border:1px dashed var(--border);border-radius:16px;padding:45px 20px;color:var(--muted)}

        /* Deal */
        .deal-wrap{display:grid;grid-template-columns:1fr 1fr;background:#171923;border-radius:20px;overflow:hidden;color:#fff;box-shadow:var(--shadow)}
        .deal-img{min-height:360px}.deal-img img{width:100%;height:100%;object-fit:cover}
        .deal-content{padding:45px;display:flex;flex-direction:column;justify-content:center}
        .deal-content .tag{align-self:flex-start;background:#fff0c2;color:#825900;padding:6px 10px;border-radius:8px;font-size:10px;font-weight:900;text-transform:uppercase;margin-bottom:12px}
        .deal-content h3{font-size:32px;letter-spacing:-1px}.deal-content .desc{color:#aeb3c1;font-size:14px;margin:7px 0 16px;max-width:470px}
        .price-big{font-size:32px;font-weight:900}.price-big .old{font-size:16px;font-weight:500;color:#888e9d;text-decoration:line-through;margin-left:8px}
        .stock{font-size:12px;color:#aeb3c1;margin:7px 0 15px}.stock strong{color:#ffbd5a}
        .timer-grid{display:flex;gap:8px;margin-bottom:20px}.timer-box{min-width:62px;background:#252936;border:1px solid #343846;border-radius:10px;padding:9px;text-align:center}.timer-box .num{font-size:20px;font-weight:900}.timer-box .label{font-size:9px;text-transform:uppercase;color:#858b9a}

        /* Reviews / newsletter */
        .testimonials-scroll{display:grid;grid-template-columns:repeat(4,1fr);gap:14px;overflow:visible}
        .testimonial-card{background:#fff;border:1px solid var(--border);border-radius:16px;padding:20px;box-shadow:none}
        .stars{color:#f59e0b;font-size:13px;margin-bottom:10px}.testimonial-card blockquote{font-size:13px;line-height:1.65;margin-bottom:16px}.author{display:flex;align-items:center;gap:9px}.avatar{width:38px;height:38px;border-radius:50%;object-fit:cover}.name{font-size:12px;font-weight:800}.role{font-size:11px;color:var(--muted)}
        .newsletter-wrap{background:linear-gradient(135deg,#625af4,#817afc);border-radius:20px;padding:34px 38px;color:#fff;display:flex;align-items:center;justify-content:space-between;gap:25px}
        .newsletter-wrap h3{font-size:25px;letter-spacing:-.5px}.newsletter-wrap p{font-size:13px;opacity:.78;margin-top:3px}
        .newsletter-wrap form{display:flex;gap:8px;min-width:min(480px,100%)}.newsletter-wrap input{min-width:0;flex:1;border:0;outline:0;border-radius:11px;padding:12px 14px;background:rgba(255,255,255,.16);color:#fff}.newsletter-wrap input::placeholder{color:rgba(255,255,255,.65)}
        .newsletter-wrap .btn{background:#fff;color:var(--primary)}#newsletterMsg{font-size:12px;margin-top:8px}

        /* Footer */
        footer{padding:45px 0 25px;border-top:1px solid var(--border);background:#fff}.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:35px}.footer-grid p{color:var(--muted);font-size:12px;max-width:300px;margin-top:8px}.footer-grid h5{font-size:12px;margin-bottom:11px}.footer-grid ul{list-style:none;display:grid;gap:7px}.footer-grid a{color:var(--muted);font-size:12px}.footer-grid a:hover{color:var(--primary)}.socials{display:flex;gap:7px;margin-top:13px}.socials a{width:32px;height:32px;border-radius:9px;background:#f1f2f6;display:grid;place-items:center}.footer-bottom{text-align:center;color:#a0a6b2;border-top:1px solid var(--border);margin-top:28px;padding-top:18px;font-size:11px}

        /* Cart drawer */
        .drawer-backdrop{position:fixed;inset:0;background:rgba(12,16,28,.42);z-index:200;opacity:0;pointer-events:none;transition:.25s}
        .drawer-backdrop.open{opacity:1;pointer-events:auto}.cart-drawer{position:fixed;right:0;top:0;height:100%;width:min(420px,100%);background:#fff;z-index:201;transform:translateX(100%);transition:.28s ease;box-shadow:-20px 0 60px rgba(0,0,0,.15);display:flex;flex-direction:column}
        .cart-drawer.open{transform:translateX(0)}.drawer-head{padding:20px;border-bottom:1px solid var(--border);display:flex;align-items:center;justify-content:space-between}.drawer-head h3{font-size:18px}.drawer-body{flex:1;overflow:auto;padding:18px}.cart-item{display:grid;grid-template-columns:62px 1fr auto;gap:11px;padding:12px 0;border-bottom:1px solid var(--border);align-items:center}.cart-item img{width:62px;height:62px;object-fit:cover;border-radius:10px;background:#f3f4f7}.cart-item h4{font-size:12px}.cart-item p{font-size:11px;color:var(--muted);margin-top:3px}.remove-item{font-size:11px;color:#a1a6b2}.remove-item:hover{color:var(--danger)}
        .drawer-empty{text-align:center;color:var(--muted);padding:70px 15px}.drawer-empty i{font-size:35px;color:#c8ccd7;margin-bottom:10px}
        .drawer-foot{padding:18px;border-top:1px solid var(--border)}.total-row{display:flex;justify-content:space-between;font-size:14px;font-weight:800;margin-bottom:13px}.checkout{width:100%}

        /* Mobile */
        #mobileMenu{display:none}
        .mobile-bottom{display:none}
        @media(max-width:1050px){.header-inner{grid-template-columns:auto 1fr auto;gap:15px}.main-nav{display:none}.search-wrap{width:250px}.categories-grid{grid-template-columns:repeat(3,1fr)}.products-grid{grid-template-columns:repeat(3,1fr)}.testimonials-scroll{grid-template-columns:repeat(2,1fr)}}
        @media(max-width:760px){
            .container{width:min(100% - 22px,var(--container))}.header-inner{min-height:62px}.brand{font-size:18px}.header-right{gap:0}.search-wrap{width:42px;padding:0;justify-content:center;background:transparent}.search-wrap input{display:none}.search-wrap button{padding:0}
            .header-right .account-btn,.header-right .wishlist-btn{display:none}.mobile-toggle{display:grid;width:40px;height:40px;border-radius:11px;background:#f0f1f6;place-items:center}
            #mobileMenu{background:#fff;border-top:1px solid var(--border);padding:8px 0 12px}.mobile-menu-open #mobileMenu{display:block}#mobileMenu ul{list-style:none;display:grid;grid-template-columns:1fr 1fr;gap:5px}#mobileMenu a{display:flex;align-items:center;gap:9px;padding:11px;border-radius:10px;font-size:12px;font-weight:700;color:var(--muted)}#mobileMenu a:hover{background:#f4f4fa;color:var(--primary)}
            .hero{margin-top:12px;min-height:410px;border-radius:19px}.hero-content{padding:48px 4px}.hero h1{font-size:40px;letter-spacing:-1.5px}.hero p{font-size:14px}.hero-note{gap:10px}
            .section{padding:38px 0}.section-header{margin-bottom:17px}.section h2{font-size:22px}.section-subtitle{font-size:12px}.view-all{font-size:11px}
            .categories-grid{display:flex;overflow:auto;padding-bottom:4px;scrollbar-width:none}.categories-grid::-webkit-scrollbar{display:none}.cat-card{min-width:118px;padding:14px 8px}.cat-card .icon-wrap{width:44px;height:44px;font-size:18px}.cat-card h4{font-size:11px}
            .product-toolbar{align-items:stretch}.filter-pills{width:100%;overflow:auto;flex-wrap:nowrap;scrollbar-width:none}.filter-pill{white-space:nowrap}.sort-select{width:100%}
            .products-grid{grid-template-columns:repeat(2,1fr);gap:10px}.product-card .body{padding:11px 10px 5px}.product-card h5{font-size:12px;min-height:34px}.price{font-size:15px}.product-card .footer{padding:7px 10px 10px}.add-btn{font-size:11px;padding:9px}.wish-btn{width:31px;height:31px}
            .deal-wrap{grid-template-columns:1fr}.deal-img{min-height:220px;max-height:260px}.deal-content{padding:25px}.deal-content h3{font-size:25px}.price-big{font-size:27px}.timer-box{min-width:52px}.timer-box .num{font-size:17px}
            .testimonials-scroll{display:flex;overflow:auto;scrollbar-width:none}.testimonial-card{min-width:275px}.newsletter-wrap{padding:25px 20px;display:block}.newsletter-wrap h3{font-size:21px}.newsletter-wrap form{min-width:0;margin-top:16px;display:grid;grid-template-columns:1fr auto}.newsletter-wrap #newsletterMsg{grid-column:1/-1}
            .footer-grid{grid-template-columns:1fr 1fr;gap:25px}.brand-col{grid-column:1/-1}.footer-grid .col:nth-last-child(-n+2){display:none}
            .mobile-bottom{position:fixed;display:grid;grid-template-columns:repeat(4,1fr);bottom:0;left:0;right:0;height:62px;background:rgba(255,255,255,.96);backdrop-filter:blur(15px);border-top:1px solid var(--border);z-index:90;padding-bottom:env(safe-area-inset-bottom)}.mobile-bottom a{display:flex;flex-direction:column;align-items:center;justify-content:center;gap:3px;font-size:9px;color:#7c8392;font-weight:700}.mobile-bottom a i{font-size:16px}.mobile-bottom a.active{color:var(--primary)}
            footer{padding-bottom:80px}
        }
        @media(max-width:390px){.hero h1{font-size:34px}.products-grid{gap:8px}.product-card .category-tag{font-size:9px}.product-card h5{font-size:11px}.price{font-size:14px}.old-price{font-size:10px}.newsletter-wrap form{grid-template-columns:1fr}.newsletter-wrap .btn{width:100%}}
    </style>
</head>

<body>

    <!-- ===== HEADER ===== -->
    <header id="siteHeader">
        <div class="container header-inner">
            <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><i class="fas fa-bars"></i></button>
            <a class="brand" href="#" aria-label="NexusShop home"><i class="fas fa-store"></i><span>Nexus<span class="accent">Shop</span></span></a>

            <nav class="main-nav" aria-label="Main navigation">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-house"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-grid-2"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                </ul>
            </nav>

            <div class="header-right">
                <div class="search-wrap" role="search">
                    <i class="fas fa-search"></i>
                    <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search products">
                    <button id="searchBtn" aria-label="Search"><i class="fas fa-arrow-right"></i></button>
                </div>
                <button class="icon-btn account-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
                <button class="icon-btn wishlist-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                <button class="icon-btn" id="cartBtn" title="Shopping cart" aria-label="Shopping cart">
                    <i class="fas fa-bag-shopping"></i><span class="badge-count" id="cartCount">0</span>
                </button>
            </div>
        </div>

        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-house"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-grid-2"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                    <li><a href="#"><i class="far fa-user"></i> Account</a></li>
                    <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
                </ul>
            </div>
        </div>
    </header>

    <main>
        <!-- HERO -->
        <section class="hero container" aria-label="Featured collection">
            <div class="container">
                <div class="hero-content">
                    <div class="badge"><i class="fas fa-sparkles"></i> New collection · 2026</div>
                    <h1>Everything you need.<br>Nothing you don't.</h1>
                    <p>Shop hand-picked fashion, technology and everyday essentials with simple prices, fast delivery and a checkout that gets out of your way.</p>
                    <div class="hero-actions">
                        <button class="btn btn-primary" id="shopNow"><i class="fas fa-bag-shopping"></i> Shop best sellers</button>
                        <button class="btn btn-light" id="exploreDeals"><i class="fas fa-bolt"></i> Today's deals</button>
                    </div>
                    <div class="hero-note">
                        <span><i class="fas fa-truck-fast"></i> Free shipping over $50</span>
                        <span><i class="fas fa-shield-check"></i> Secure checkout</span>
                        <span><i class="fas fa-rotate-left"></i> Easy returns</span>
                    </div>
                </div>
            </div>
        </section>

        <!-- CATEGORIES -->
        <section class="section" id="categories">
            <div class="container">
                <div class="section-header">
                    <div><div class="eyebrow">Shop by need</div><h2>Browse categories</h2><p class="section-subtitle">Start with what you're looking for</p></div>
                    <a href="#products" class="view-all">View products <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="categories-grid" id="categoriesGrid"></div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products" style="padding-top:10px">
            <div class="container">
                <div class="section-header">
                    <div><div class="eyebrow">Customer favorites</div><h2>Trending now</h2><p class="section-subtitle">Popular picks worth a closer look</p></div>
                </div>
                <div class="product-toolbar">
                    <div class="filter-pills" id="filterPills">
                        <button class="filter-pill active" data-filter="all">All</button>
                        <button class="filter-pill" data-filter="Smartphones">Phones</button>
                        <button class="filter-pill" data-filter="Laptops">Laptops</button>
                        <button class="filter-pill" data-filter="Gadgets">Gadgets</button>
                        <button class="filter-pill" data-filter="Accessories">Accessories</button>
                        <button class="filter-pill" data-filter="Footwear">Footwear</button>
                    </div>
                    <select class="sort-select" id="sortSelect" aria-label="Sort products">
                        <option value="featured">Sort: Featured</option>
                        <option value="price-low">Price: Low to high</option>
                        <option value="price-high">Price: High to low</option>
                        <option value="rating">Top rated</option>
                    </select>
                </div>
                <div class="products-grid" id="productsGrid"></div>
            </div>
        </section>

        <!-- DEAL -->
        <section class="section" id="deals">
            <div class="container">
                <div class="section-header">
                    <div><div class="eyebrow">Limited time</div><h2>Deal of the day</h2><p class="section-subtitle">A premium pick at a better price</p></div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=85" alt="MacBook Air M2" loading="lazy"></div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-bolt"></i> Limited offer</span>
                        <h3>MacBook Air M2</h3>
                        <p class="desc">Thin, light and incredibly capable. Get all-day performance in a beautifully portable design.</p>
                        <div class="price-big">$999 <span class="old">$1,199</span></div>
                        <p class="stock">Only <strong>12</strong> left at this price</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
                            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hours</div></div>
                            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Mins</div></div>
                            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Secs</div></div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add deal to cart</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- REVIEWS -->
        <section class="section" id="testimonials">
            <div class="container">
                <div class="section-header">
                    <div><div class="eyebrow">Loved by shoppers</div><h2>What customers say</h2><p class="section-subtitle">Real feedback from real buyers</p></div>
                </div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- NEWSLETTER -->
        <section class="section">
            <div class="container">
                <div class="newsletter-wrap">
                    <div><h3>Get the good stuff.</h3><p>New arrivals, useful picks and exclusive offers — no spam.</p></div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="Your email address" aria-label="Email address" required>
                        <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                        <div id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>
    </main>

    <!-- FOOTER -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <div class="brand"><i class="fas fa-store"></i><span>Nexus<span class="accent">Shop</span></span></div>
                    <p>A cleaner, simpler shopping experience built around products people actually want.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a><a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a><a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a><a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col"><h5>Shop</h5><ul><li><a href="#products">Trending</a></li><li><a href="#categories">Categories</a></li><li><a href="#deals">Deals</a></li><li><a href="#products">New arrivals</a></li></ul></div>
                <div class="col"><h5>Help</h5><ul><li><a href="#">Help center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact us</a></li></ul></div>
                <div class="col"><h5>Company</h5><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li></ul></div>
            </div>
            <div class="footer-bottom">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
        </div>
    </footer>

    <!-- CART DRAWER -->
    <div class="drawer-backdrop" id="drawerBackdrop"></div>
    <aside class="cart-drawer" id="cartDrawer" aria-label="Shopping cart">
        <div class="drawer-head"><h3>Your cart</h3><button class="icon-btn" id="closeCart" aria-label="Close cart"><i class="fas fa-xmark"></i></button></div>
        <div class="drawer-body" id="cartItems"></div>
        <div class="drawer-foot">
            <div class="total-row"><span>Items</span><span id="cartTotalItems">0</span></div>
            <button class="btn btn-primary checkout" id="checkoutBtn"><i class="fas fa-lock"></i> Secure checkout</button>
        </div>
    </aside>

    <!-- MOBILE BOTTOM NAV -->
    <nav class="mobile-bottom" aria-label="Mobile navigation">
        <a href="#" class="active"><i class="fas fa-house"></i>Home</a>
        <a href="#categories"><i class="fas fa-grid-2"></i>Categories</a>
        <a href="#products"><i class="fas fa-fire"></i>Trending</a>
        <a href="#deals"><i class="fas fa-bolt"></i>Deals</a>
    </nav>

    <!-- ===== SCRIPT ===== -->
    <script>
        // ========================= DATA =========================
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
        ];
        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'Laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'Footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' }
        ];
        const TESTIMONIALS = [{
            name: 'Ava Martin',
            role: 'Verified Buyer',
            avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
            text: 'Fast shipping and excellent support. The product exceeded my expectations!',
            stars: 5
        }, {
            name: 'Michael Lee',
            role: 'Frequent Shopper',
            avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
            text: 'Great selection and smooth checkout. Will definitely shop again.',
            stars: 4
        }, {
            name: 'Sophia Chen',
            role: 'Designer',
            avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
            text: 'Love the quality and the packaging. Everything arrived in perfect condition.',
            stars: 5
        }, {
            name: 'James Wilson',
            role: 'Tech Enthusiast',
            avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
            text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.',
            stars: 5
        }];

        // ========================= STATE =========================
        let cart = [];
        let activeFilter = 'all';

        const $ = id => document.getElementById(id);
        const categoriesGrid = $('categoriesGrid');
        const productsGrid = $('productsGrid');
        const searchInput = $('searchInput');
        const mobileToggle = $('mobileToggle');
        const mobileMenu = $('mobileMenu');
        const cartBtn = $('cartBtn');
        const cartDrawer = $('cartDrawer');
        const drawerBackdrop = $('drawerBackdrop');
        const cartItems = $('cartItems');
        const cartCountEl = $('cartCount');
        const cartTotalItems = $('cartTotalItems');

        function escapeHtml(text){
            return String(text).replace(/[&<>"']/g,s=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s]));
        }

        function renderCategories(){
            categoriesGrid.innerHTML = CATEGORIES.map(cat => `
                <button class="cat-card" data-category="${escapeHtml(cat.name)}" aria-label="Browse ${escapeHtml(cat.name)}">
                    <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
                    <h4>${escapeHtml(cat.name)}</h4>
                    <div class="count">${cat.count} items</div>
                </button>
            `).join('');
            categoriesGrid.querySelectorAll('.cat-card').forEach(card=>{
                card.addEventListener('click',()=>{
                    activeFilter=card.dataset.category;
                    document.querySelectorAll('.filter-pill').forEach(p=>p.classList.toggle('active',p.dataset.filter===activeFilter));
                    renderProducts(getVisibleProducts());
                    $('products').scrollIntoView({behavior:'smooth'});
                });
            });
        }

        function getVisibleProducts(){
            const q=(searchInput.value||'').trim().toLowerCase();
            let list=PRODUCTS.filter(p=>{
                const matchesFilter=activeFilter==='all' || p.category===activeFilter;
                const matchesSearch=!q || p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q);
                return matchesFilter && matchesSearch;
            });
            const sort=$('sortSelect').value;
            if(sort==='price-low') list.sort((a,b)=>a.price-b.price);
            if(sort==='price-high') list.sort((a,b)=>b.price-a.price);
            if(sort==='rating') list.sort((a,b)=>b.rating-a.rating || b.reviews-a.reviews);
            return list;
        }

        function renderProducts(list){
            if(!list.length){
                productsGrid.innerHTML='<div class="empty-state"><i class="fas fa-search" style="font-size:28px;margin-bottom:10px"></i><h3>No products found</h3><p>Try another search or category.</p></div>';
                return;
            }
            productsGrid.innerHTML=list.map(p=>{
                const inCart=cart.filter(x=>x.id===p.id).length;
                const badge=p.badge?`<span class="badge ${p.badge==='Sale'?'sale':''}">${p.badge}</span>`:'';
                const old=p.oldPrice?`<span class="old-price">$${p.oldPrice.toLocaleString()}</span>`:'';
                const stars='★'.repeat(Math.round(p.rating))+'☆'.repeat(5-Math.round(p.rating));
                return `<article class="product-card">
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${badge}
                        <button class="wish-btn" aria-label="Add ${escapeHtml(p.title)} to wishlist"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${escapeHtml(p.category)}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row"><span class="price">$${p.price.toLocaleString()}</span>${old}</div>
                        <div class="rating">${stars}<span>${p.rating.toFixed(1)} · ${p.reviews} reviews</span></div>
                    </div>
                    <div class="footer"><button class="add-btn ${inCart?'added':''}" data-id="${p.id}"><i class="fas ${inCart?'fa-check':'fa-cart-plus'}"></i> ${inCart?'Added':'Add to cart'}</button></div>
                </article>`;
            }).join('');

            productsGrid.querySelectorAll('.add-btn').forEach(btn=>btn.addEventListener('click',()=>{
                addToCart(Number(btn.dataset.id));
            }));
            productsGrid.querySelectorAll('.wish-btn').forEach(btn=>btn.addEventListener('click',()=>{
                btn.classList.toggle('active');
                btn.innerHTML=btn.classList.contains('active')?'<i class="fas fa-heart"></i>':'<i class="far fa-heart"></i>';
            }));
        }

        function renderTestimonials(){
            $('testimonialsList').innerHTML=TESTIMONIALS.map(t=>`
                <article class="testimonial-card">
                    <div class="stars">${'★'.repeat(t.stars)}${'☆'.repeat(5-t.stars)}</div>
                    <blockquote>“${escapeHtml(t.text)}”</blockquote>
                    <div class="author"><img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}"><div><div class="name">${escapeHtml(t.name)}</div><div class="role">${escapeHtml(t.role)}</div></div></div>
                </article>`).join('');
        }

        function addToCart(id){
            const p=PRODUCTS.find(x=>x.id===id); if(!p)return;
            cart.push(p); renderCart(); updateCartBadge(); renderProducts(getVisibleProducts());
            openCart();
        }

        function removeFromCart(index){
            cart.splice(index,1); renderCart(); updateCartBadge(); renderProducts(getVisibleProducts());
        }

        function renderCart(){
            cartTotalItems.textContent=cart.length;
            if(!cart.length){
                cartItems.innerHTML='<div class="drawer-empty"><i class="fas fa-bag-shopping"></i><h3>Your cart is empty</h3><p>Add something you love and it will appear here.</p></div>';
                return;
            }
            cartItems.innerHTML=cart.map((p,i)=>`
                <div class="cart-item">
                    <img src="${p.img}" alt="${escapeHtml(p.title)}">
                    <div><h4>${escapeHtml(p.title)}</h4><p>$${p.price.toLocaleString()} · ${escapeHtml(p.category)}</p></div>
                    <button class="remove-item" data-index="${i}" aria-label="Remove item"><i class="fas fa-trash"></i></button>
                </div>`).join('');
            cartItems.querySelectorAll('.remove-item').forEach(btn=>btn.addEventListener('click',()=>removeFromCart(Number(btn.dataset.index))));
        }

        function updateCartBadge(){
            cartCountEl.textContent=cart.length;
            cartCountEl.animate([{transform:'scale(1)'},{transform:'scale(1.3)'},{transform:'scale(1)'}],{duration:280});
        }

        function openCart(){cartDrawer.classList.add('open');drawerBackdrop.classList.add('open');document.body.classList.add('no-scroll')}
        function closeCart(){cartDrawer.classList.remove('open');drawerBackdrop.classList.remove('open');document.body.classList.remove('no-scroll')}

        function filterAndRender(){renderProducts(getVisibleProducts())}

        // Search
        $('searchBtn').addEventListener('click',filterAndRender);
        searchInput.addEventListener('input',()=>filterAndRender());
        searchInput.addEventListener('keydown',e=>{if(e.key==='Enter')filterAndRender()});
        $('sortSelect').addEventListener('change',filterAndRender);

        // Filter pills
        document.querySelectorAll('.filter-pill').forEach(pill=>{
            pill.addEventListener('click',()=>{
                activeFilter=pill.dataset.filter;
                document.querySelectorAll('.filter-pill').forEach(p=>p.classList.remove('active'));
                pill.classList.add('active');
                filterAndRender();
            });
        });

        // Mobile menu
        mobileToggle.addEventListener('click',()=>{
            const open=document.body.classList.toggle('mobile-menu-open');
            mobileToggle.innerHTML=open?'<i class="fas fa-xmark"></i>':'<i class="fas fa-bars"></i>';
            mobileToggle.setAttribute('aria-label',open?'Close menu':'Open menu');
        });
        mobileMenu.querySelectorAll('a').forEach(a=>a.addEventListener('click',()=>{
            document.body.classList.remove('mobile-menu-open');
            mobileToggle.innerHTML='<i class="fas fa-bars"></i>';
        }));

        // Hero actions
        $('shopNow').addEventListener('click',()=>{activeFilter='all';document.querySelector('.filter-pill[data-filter="all"]').click();$('products').scrollIntoView({behavior:'smooth'})});
        $('exploreDeals').addEventListener('click',()=>$('deals').scrollIntoView({behavior:'smooth'}));

        // Cart
        cartBtn.addEventListener('click',openCart);
        $('closeCart').addEventListener('click',closeCart);
        drawerBackdrop.addEventListener('click',closeCart);
        $('checkoutBtn').addEventListener('click',()=>{
            if(!cart.length){alert('Your cart is empty.');return}
            alert(`Checkout ready for ${cart.length} item${cart.length===1?'':'s'}.`);
        });

        // Newsletter
        $('newsletterForm').addEventListener('submit',e=>{
            e.preventDefault();
            const email=$('newsletterEmail').value.trim(), msg=$('newsletterMsg');
            if(!email || !email.includes('@')){msg.textContent='Please enter a valid email address.';msg.style.color='#ffd1d1';return}
            msg.textContent='✓ You’re subscribed. Welcome to NexusShop!';msg.style.color='#d9ffd9';$('newsletterEmail').value='';
            setTimeout(()=>msg.textContent='',3500);
        });

        // Deal timer
        (function(){
            const target=new Date(Date.now()+(24*60+36)*60*1000);
            function tick(){
                const diff=Math.max(0,target-Date.now());
                const d=Math.floor(diff/86400000),h=Math.floor(diff%86400000/3600000),m=Math.floor(diff%3600000/60000),s=Math.floor(diff%60000/1000);
                $('dealDays').textContent=d;$('dealHours').textContent=String(h).padStart(2,'0');$('dealMinutes').textContent=String(m).padStart(2,'0');$('dealSeconds').textContent=String(s).padStart(2,'0');
            }
            tick();setInterval(tick,1000);
        })();

        $('buyDeal').addEventListener('click',()=>{
            const deal=PRODUCTS.find(p=>p.title.includes('MacBook')) || PRODUCTS[1];
            addToCart(deal.id);
        });

        // Footer / initial render
        $('year').textContent=new Date().getFullYear();
        renderCategories();renderProducts(PRODUCTS);renderTestimonials();renderCart();updateCartBadge();
    </script>

</body>
</html>
