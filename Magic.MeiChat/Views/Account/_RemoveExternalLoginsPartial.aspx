﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<ICollection<Magic.MeiChat.Models.ExternalLogin>>" %>

<% if (Model.Count > 0) { %>
    <h3>已注册外部登录</h3>
    <table>
        <tbody>
        <% foreach (Magic.MeiChat.Models.ExternalLogin externalLogin in Model) { %>
            <tr>
                <td><%: externalLogin.ProviderDisplayName %></td>
                <td>
                    <% if (ViewBag.ShowRemoveButton) {
                        using (Html.BeginForm("Disassociate", "Account")) { %>
                            <%: Html.AntiForgeryToken() %>
                            <div>
                                <%: Html.Hidden("provider", externalLogin.Provider) %>
                                <%: Html.Hidden("providerUserId", externalLogin.ProviderUserId) %>
                                <input type="submit" value="删除" title="从你的帐户中删除此 <%: externalLogin.ProviderDisplayName %> 凭据" />
                            </div>
                        <% }
                    } else { %>
                        &nbsp;
                    <% } %>
                </td>
            </tr>
        <% } %>
        </tbody>
    </table>
<% } %>
