.class Lcom/android/mms/template/TextTemplateListActivity$2;
.super Ljava/lang/Object;
.source "TextTemplateListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/template/TextTemplateListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/template/TextTemplateListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/template/TextTemplateListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #setter for: Lcom/android/mms/template/TextTemplateListActivity;->mTemplateContextMenu:Landroid/view/ContextMenu;
    invoke-static {v1, p1}, Lcom/android/mms/template/TextTemplateListActivity;->access$102(Lcom/android/mms/template/TextTemplateListActivity;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    .line 394
    if-nez p3, :cond_1

    .line 395
    const-string v1, "Mms/TextTemplateListActivity"

    const-string v2, "menuInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #getter for: Lcom/android/mms/template/TextTemplateListActivity;->mMode:I
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$200(Lcom/android/mms/template/TextTemplateListActivity;)I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p3

    .line 402
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 403
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/mms/template/TextTemplateListActivity;->showItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;I)V

    goto :goto_0
.end method
