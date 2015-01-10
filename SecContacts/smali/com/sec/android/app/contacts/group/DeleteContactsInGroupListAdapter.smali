.class public Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;
.super Lcom/android/contacts/list/DefaultContactListAdapter;
.source "DeleteContactsInGroupListAdapter.java"


# instance fields
.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mGroupType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 41
    .local v1, filter:Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 42
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, query:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 44
    const-string v2, ""

    .line 46
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 51
    sget-object v4, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 52
    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 75
    .end local v2           #query:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getSortOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 76
    const-string v3, "sort_key"

    .line 81
    .local v3, sortOrder:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 82
    return-void

    .line 56
    .end local v3           #sortOrder:Ljava/lang/String;
    .restart local v2       #query:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-nez v4, :cond_2

    .line 57
    const-string v4, "DeleteContactsInGroupListAdapter"

    const-string v5, "configureUri : groupInfo is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Can\'t generate URI: GroupInfo is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    iget v5, p0, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->mGroupType:I

    invoke-static {v4, v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->generateGroupMemberFilterUriBuilder(Lcom/sec/android/app/contacts/group/GroupInfo;I)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 62
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 63
    sget-object v4, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 66
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    .line 69
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #query:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 70
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 71
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    .line 78
    :cond_4
    const-string v3, "sort_key_alt"

    .restart local v3       #sortOrder:Ljava/lang/String;
    goto :goto_1
.end method

.method protected configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 3
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 105
    iget v1, p0, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->mGroupType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 110
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 112
    .end local v0           #selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 5
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    const-wide/16 v3, 0x0

    .line 85
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-nez v1, :cond_0

    .line 86
    const-string v1, "DeleteContactsInGroupListAdapter"

    const-string v2, "configureUri : groupInfo is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    iget v2, p0, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->mGroupType:I

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->generateGroupMemberUri(Lcom/sec/android/app/contacts/group/GroupInfo;I)Landroid/net/Uri;

    move-result-object v0

    .line 91
    .local v0, uri:Landroid/net/Uri;
    cmp-long v1, p2, v3

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-static {v0}, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 95
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "directory"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 2
    .parameter "groupInfo"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->mGroupType:I

    .line 117
    return-void
.end method
