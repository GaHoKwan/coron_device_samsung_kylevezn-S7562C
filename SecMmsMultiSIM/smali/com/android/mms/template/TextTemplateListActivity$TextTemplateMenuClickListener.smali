.class final Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;
.super Ljava/lang/Object;
.source "TextTemplateListActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/template/TextTemplateListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextTemplateMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/template/TextTemplateListActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/template/TextTemplateListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/template/TextTemplateListActivity;Lcom/android/mms/template/TextTemplateListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;-><init>(Lcom/android/mms/template/TextTemplateListActivity;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 439
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 479
    :pswitch_0
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 441
    :pswitch_1
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    new-instance v6, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener$1;

    invoke-direct {v6, p0}, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener$1;-><init>(Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;)V

    #calls: Lcom/android/mms/template/TextTemplateListActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v5, v6}, Lcom/android/mms/template/TextTemplateListActivity;->access$900(Lcom/android/mms/template/TextTemplateListActivity;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 458
    :pswitch_2
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-static {v5}, Lcom/android/mms/MmsConfig;->getTextTemplate(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, texts:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #getter for: Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/mms/template/TextTemplateListActivity;->access$400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #calls: Lcom/android/mms/template/TextTemplateListActivity;->getTextTemplateSelector()I
    invoke-static {v6}, Lcom/android/mms/template/TextTemplateListActivity;->access$500(Lcom/android/mms/template/TextTemplateListActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 461
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #getter for: Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/mms/template/TextTemplateListActivity;->access$400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/database/Cursor;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 462
    .local v0, checkedIndex:I
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #getter for: Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/mms/template/TextTemplateListActivity;->access$400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, sBody:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    const-class v6, Lcom/android/mms/template/TextTemplateEditActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 466
    .local v1, intent:Landroid/content/Intent;
    const/4 v5, -0x1

    if-le v0, v5, :cond_0

    .line 469
    const-string v5, "android.intent.extra.TEMPLATE"

    aget-object v6, v3, v0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    :goto_1
    const-string v5, "activity_title"

    iget-object v6, p0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    const v7, 0x7f0a02e9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-virtual {v5, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 472
    :cond_0
    const-string v5, "android.intent.extra.TEMPLATE"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
