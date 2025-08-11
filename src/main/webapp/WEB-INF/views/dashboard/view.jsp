<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Page Wrapper -->
<div class="max-w-7xl mx-auto px-6 py-8">

    <!-- Header -->
    <header class="flex items-center justify-between mb-10 border-b border-gray-700 pb-4">
        <div>
            <h1 class="text-4xl font-extrabold text-white flex items-center gap-3">
                <i class="fa-solid fa-gauge-high text-blue-400"></i> DASHBOARD
            </h1>
            <p class="text-gray-400 text-sm mt-1">Quick overview of your system stats</p>
        </div>
    </header>

    <!-- Stats Row -->
    <section class="grid grid-cols-1 sm:grid-cols-3 gap-6 mb-12">
        <!-- Customers -->
        <div class="bg-gradient-to-br from-green-500 to-emerald-400 rounded-2xl p-6 shadow-lg hover:scale-105 transition transform duration-200">
            <div class="flex justify-between items-center">
                <span class="text-white text-sm font-medium">Total Customers</span>
                <i class="fa-solid fa-user-group text-white text-3xl"></i>
            </div>
            <h2 class="text-4xl font-bold mt-3 text-white">
                <%= request.getAttribute("customerCount") %>
            </h2>
        </div>

        <!-- Items -->
        <div class="bg-gradient-to-br from-yellow-500 to-amber-400 rounded-2xl p-6 shadow-lg hover:scale-105 transition transform duration-200">
            <div class="flex justify-between items-center">
                <span class="text-white text-sm font-medium">Total Items</span>
                <i class="fa-solid fa-cubes-stacked text-white text-3xl"></i>
            </div>
            <h2 class="text-4xl font-bold mt-3 text-white">
                <%= request.getAttribute("itemCount") %>
            </h2>
        </div>

        <!-- Bills -->
        <div class="bg-gradient-to-br from-blue-500 to-sky-400 rounded-2xl p-6 shadow-lg hover:scale-105 transition transform duration-200">
            <div class="flex justify-between items-center">
                <span class="text-white text-sm font-medium">Total Bills</span>
                <i class="fa-solid fa-receipt text-white text-3xl"></i>
            </div>
            <h2 class="text-4xl font-bold mt-3 text-white">
                <%= request.getAttribute("orderCount") %>
            </h2>
        </div>
    </section>

    <!-- Quick Actions -->
    <section class="bg-neutral rounded-2xl p-6 shadow-lg">
        <h2 class="text-xl font-semibold mb-6 text-white flex items-center gap-2">
            <i class="fa-solid fa-bolt text-yellow-400"></i> Quick Actions
        </h2>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
            <a class="bg-base-200 flex flex-col justify-center items-center rounded-2xl py-8 hover:bg-green-200 hover:text-green-800 transition transform hover:scale-105"
               href="<%= request.getContextPath() %>/customer">
                <i class="fa-solid fa-user-plus text-4xl mb-3"></i>
                <span class="font-medium">Add New Customer</span>
            </a>

            <a class="bg-base-200 flex flex-col justify-center items-center rounded-2xl py-8 hover:bg-yellow-200 hover:text-yellow-800 transition transform hover:scale-105"
               href="<%= request.getContextPath() %>/item">
                <i class="fa-solid fa-plus-square text-4xl mb-3"></i>
                <span class="font-medium">Add New Item</span>
            </a>

            <a class="bg-base-200 flex flex-col justify-center items-center rounded-2xl py-8 hover:bg-blue-200 hover:text-blue-800 transition transform hover:scale-105"
               href="<%= request.getContextPath() %>/order">
                <i class="fa-solid fa-file-invoice-dollar text-4xl mb-3"></i>
                <span class="font-medium">Create Bill</span>
            </a>
        </div>
    </section>

</div>
