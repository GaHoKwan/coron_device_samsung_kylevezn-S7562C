.class Lcom/android/mms/ui/SearchActivity$3;
.super Landroid/content/AsyncQueryHandler;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivity;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/ContentResolver;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    iput-object p3, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/16 v8, 0x1e

    const/4 v7, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 306
    const-string v5, "Mms/SearchActivity"

    const-string v6, "onQueryComplete"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v5, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/SearchActivity;->hideProgressDialog()V

    .line 309
    if-nez p3, :cond_0

    .line 351
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .local v0, cursorCount:I
    move-object v3, p2

    .line 315
    check-cast v3, Ljava/lang/String;

    .line 317
    .local v3, searchString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_3

    invoke-virtual {v3, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, titleString:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/SearchActivity;->access$100(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/SearchListAdapter;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/mms/ui/SearchListAdapter;->setSearchString(Ljava/lang/String;)V

    .line 321
    iget-object v5, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    iput v7, v5, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    .line 322
    iget-object v5, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    iput v7, v5, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    .line 324
    iget-object v5, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #calls: Lcom/android/mms/ui/SearchActivity;->setSeparatorInfo(Landroid/database/Cursor;)V
    invoke-static {v5, p3}, Lcom/android/mms/ui/SearchActivity;->access$200(Lcom/android/mms/ui/SearchActivity;Landroid/database/Cursor;)V

    .line 325
    iget-object v5, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/SearchActivity;->access$100(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/SearchListAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 328
    iget-object v5, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/view/View;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 330
    iget-object v5, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 331
    iget-object v5, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 332
    iget-object v5, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 334
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 337
    if-lez v0, :cond_4

    .line 338
    iget-object v5, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/android/mms/MmsApp;

    invoke-virtual {v5}, Lcom/android/mms/MmsApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v2

    .line 340
    .local v2, recent:Landroid/provider/SearchRecentSuggestions;
    if-eqz v2, :cond_2

    .line 341
    iget-object v5, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    const v6, 0x7f0a010c

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v3, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .end local v2           #recent:Landroid/provider/SearchRecentSuggestions;
    :cond_2
    :goto_2
    const-string v5, "Mms/SearchActivity"

    const-string v6, "onQueryComplete"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v4           #titleString:Ljava/lang/String;
    :cond_3
    move-object v4, v3

    .line 317
    goto :goto_1

    .line 345
    .restart local v4       #titleString:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    const v6, 0x1020004

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v1, v5

    check-cast v1, Landroid/widget/TextView;

    .line 346
    .local v1, emptyText:Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 347
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
