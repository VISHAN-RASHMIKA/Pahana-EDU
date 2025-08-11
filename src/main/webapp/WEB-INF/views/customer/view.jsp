<%@ page contentType="text/html;charset=UTF-8" language="java"
         import="java.util.*, dev.vishan.pahanaedu.business.customer.dto.CustomerDTO" %>

<!-- Page Header -->
<div class="flex justify-between items-center mb-8">
    <h1 class="text-4xl font-extrabold flex items-center gap-3 text-white">
        <i class="fa-solid fa-users text-blue-400"></i> CUSTOMER MANAGEMENT
    </h1>
    <label for="add-customer-modal" class="btn btn-primary px-6 py-2 rounded-lg shadow hover:shadow-lg hover:scale-105 transition">
        <i class="fa-solid fa-user-plus mr-2"></i> Add Customer
    </label>
</div>

<!-- Card Container -->
<div class="card bg-base-200 shadow-xl rounded-2xl overflow-hidden border border-gray-700">
    <div class="card-body">

        <!-- Card Header -->
        <div class="flex justify-between items-center mb-6">
            <h2 class="card-title text-lg font-semibold flex items-center gap-2">
                <i class="fa-solid fa-address-book text-green-400"></i> Customers
            </h2>
            <div class="relative">
                <input type="text" placeholder="Search customers..." class="input input-bordered w-64 pl-10 rounded-full" />
                <i class="fa-solid fa-magnifying-glass absolute left-3 top-3 text-gray-400"></i>
            </div>
        </div>

        <!-- Table -->
        <div class="overflow-x-auto rounded-lg border border-gray-600">
            <table class="table table-zebra table-md">
                <thead class="bg-gray-800 text-gray-200">
                <tr>
                    <th>Name</th>
                    <th>Mobile</th>
                    <th>Units Consumed</th>
                    <th>Email</th>
                    <th>Registered</th>
                    <th class="text-center">Actions</th>
                </tr>
                </thead>
                <tbody>
                <%
                    List<CustomerDTO> customers = (List<CustomerDTO>) request.getAttribute("customerList");
                    if (customers == null || customers.isEmpty()) {
                %>
                <tr>
                    <td colspan="9" class="text-center text-gray-400 py-6">
                        <i class="fa-solid fa-circle-exclamation mr-2"></i> No customers found
                    </td>
                </tr>
                <%
                } else {
                    for (CustomerDTO customer : customers) {
                %>
                <tr class="hover:bg-gray-700 transition">
                    <td class="font-medium"><%= customer.getName() %></td>
                    <td><%= customer.getMobileNumber() %></td>
                    <td><%= customer.getUnitsConsumed() %></td>
                    <td><%= customer.getEmail() %></td>
                    <td><%= customer.getRegistrationDate() %></td>
                    <td>
                        <div class="flex justify-center space-x-2">
                            <a href="<%= request.getContextPath() %>/customer/edit?id=<%= customer.getCustomerId() %>"
                               class="btn btn-sm btn-primary btn-outline flex items-center gap-1 hover:scale-105 transition">
                                <i class="fa-solid fa-pen"></i> Edit
                            </a>
                            <form method="post" action="<%= request.getContextPath() %>/customer/delete?id=<%= customer.getCustomerId() %>"
                                  onsubmit="return confirm('Are you sure you want to delete this customer?');">
                                <button type="submit" class="btn btn-sm btn-error btn-outline flex items-center gap-1 hover:scale-105 transition">
                                    <i class="fa-solid fa-trash"></i> Delete
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

<%@ include file="../customer/add-customer-modal.jsp" %>
