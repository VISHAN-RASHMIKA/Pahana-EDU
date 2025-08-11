<%@ page contentType="text/html;charset=UTF-8" language="java"
         import="java.util.*, dev.vishan.pahanaedu.business.item.dto.ItemDTO" %>

<div class="flex flex-col gap-4 mb-8">
    <!-- Header -->
    <div class="flex justify-between items-center border-b pb-3">
        <h1 class="text-3xl font-extrabold text-white tracking-tight">📦 ITEM MANAGEMENT</h1>
        <label for="add-item-modal" class="btn btn-primary shadow-md">+ Add Item</label>
    </div>
    <!-- Combined Container with single border and rounded corners -->
    <div class="border border-gray-300 rounded-xl overflow-hidden bg-white shadow-lg">

        <!-- Search Bar -->
        <div class="flex justify-between items-center p-4 border-b border-gray-300 bg-gray-50">
            <h2 class="text-xl font-semibold text-gray-800">Item List</h2>
            <input type="text" placeholder="🔍 Search items..."
                   class="input input-bordered w-64 rounded border-gray-300 focus:border-blue-500 focus:ring focus:ring-blue-200" />
        </div>

        <!-- Table Card -->
        <div class="overflow-x-auto">
            <table class="table table-zebra table-md w-full">
                <thead class="bg-blue-600 text-white">
                <tr>
                    <th class="py-3 px-4">Name</th>
                    <th>Category</th>
                    <th>Unit Price</th>
                    <th>Stock</th>
                    <th>Publisher</th>
                    <th>Author</th>
                    <th class="text-center">Actions</th>
                </tr>
                </thead>
                <tbody>
                <!-- table body here -->

                <%
                    List<ItemDTO> items = (List<ItemDTO>) request.getAttribute("itemList");
                    if (items == null || items.isEmpty()) {
                %>
                <tr>
                    <td colspan="7" class="text-center text-gray-400 py-6">No items found</td>
                </tr>
                <%
                } else {
                    for (ItemDTO item : items) {
                %>
                <tr class="hover:bg-gray-50 transition">
                    <td class="font-medium"><%= item.getItemName() %></td>
                    <td><%= item.getCategory() %></td>
                    <td>Rs. <%= item.getUnitPrice() %></td>
                    <td><%= item.getStockQuantity() %></td>
                    <td><%= item.getPublisher() %></td>
                    <td><%= item.getAuthor() %></td>
                    <td class="text-center">
                        <div class="flex justify-center gap-2">
                            <a href="<%= request.getContextPath() %>/item/edit?code=<%= item.getItemCode() %>"
                               class="btn btn-sm btn-outline btn-primary">
                                ✏ Edit
                            </a>
                            <form method="post"
                                  action="<%= request.getContextPath() %>/item/delete?code=<%= item.getItemCode() %>"
                                  onsubmit="return confirm('Are you sure you want to delete this item?');">
                                <button type="submit" class="btn btn-sm btn-outline btn-error">
                                    🗑 Delete
                                </button>
                            </form>
                        </div>
                    </td>
                </tr>
                <%
                        }
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%@ include file="../item/add-item-modal.jsp" %>
