.class public Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SpeedDialListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/SpeedDialListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataBrowseListAdapter"
.end annotation


# instance fields
.field mDataCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1850
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    .line 1851
    const v0, 0x7f040070

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, p3, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 1852
    iput-object p3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;->mDataCursor:Landroid/database/Cursor;

    .line 1853
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1856
    const v6, 0x1020014

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1857
    .local v4, text1:Landroid/widget/TextView;
    const v6, 0x1020015

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1859
    .local v5, text2:Landroid/widget/TextView;
    const-string v6, "data2"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1860
    .local v2, phoneType:I
    const-string v6, "data1"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1861
    .local v1, phoneNumber:Ljava/lang/String;
    const-string v6, "data3"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1862
    .local v0, label:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v2, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1864
    .local v3, phoneTypeLabel:Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1865
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1866
    return-void
.end method

.method public getItemId(I)J
    .locals 6
    .parameter "position"

    .prologue
    const-wide/16 v1, -0x1

    .line 1870
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 1880
    :cond_0
    :goto_0
    return-wide v1

    .line 1873
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;->mDataCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1877
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1878
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;->mDataCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;->mDataCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 1879
    :catch_0
    move-exception v0

    .line 1880
    .local v0, e:Landroid/database/StaleDataException;
    goto :goto_0
.end method
