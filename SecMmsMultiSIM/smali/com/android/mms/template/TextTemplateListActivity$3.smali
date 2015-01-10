.class Lcom/android/mms/template/TextTemplateListActivity$3;
.super Ljava/lang/Object;
.source "TextTemplateListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/template/TextTemplateListActivity;->onClickDone()V
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
    .line 653
    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListActivity$3;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 655
    iget-object v6, p0, Lcom/android/mms/template/TextTemplateListActivity$3;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;
    invoke-static {v6}, Lcom/android/mms/template/TextTemplateListActivity;->access$1000(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/android/mms/template/TextTemplateListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 656
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v6, p0, Lcom/android/mms/template/TextTemplateListActivity$3;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;
    invoke-static {v6}, Lcom/android/mms/template/TextTemplateListActivity;->access$1000(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/android/mms/template/TextTemplateListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/template/TextTemplateListAdapter;->getCheckedList()Ljava/util/ArrayList;

    move-result-object v3

    .line 658
    .local v3, mArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 659
    .local v4, mCloneArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 661
    .local v5, pos:I
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 662
    iget-object v6, p0, Lcom/android/mms/template/TextTemplateListActivity$3;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #getter for: Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;
    invoke-static {v6}, Lcom/android/mms/template/TextTemplateListActivity;->access$600(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/android/mms/template/TextTemplateProvider;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Lcom/android/mms/template/TextTemplateProvider;->deleteTemplate(Landroid/database/Cursor;I)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 664
    :catch_0
    move-exception v1

    .line 665
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v6, "Mms/TextTemplateListActivity"

    const-string v7, "IllegalStateException break"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .end local v5           #pos:I
    :cond_1
    iget-object v6, p0, Lcom/android/mms/template/TextTemplateListActivity$3;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #calls: Lcom/android/mms/template/TextTemplateListActivity;->UpdateQuery()V
    invoke-static {v6}, Lcom/android/mms/template/TextTemplateListActivity;->access$1100(Lcom/android/mms/template/TextTemplateListActivity;)V

    .line 671
    iget-object v6, p0, Lcom/android/mms/template/TextTemplateListActivity$3;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #calls: Lcom/android/mms/template/TextTemplateListActivity;->setMode(IZ)V
    invoke-static {v6, v8, v8}, Lcom/android/mms/template/TextTemplateListActivity;->access$700(Lcom/android/mms/template/TextTemplateListActivity;IZ)V

    .line 672
    iget-object v6, p0, Lcom/android/mms/template/TextTemplateListActivity$3;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #calls: Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V
    invoke-static {v6}, Lcom/android/mms/template/TextTemplateListActivity;->access$800(Lcom/android/mms/template/TextTemplateListActivity;)V

    .line 674
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v9, :cond_2

    .line 675
    iget-object v6, p0, Lcom/android/mms/template/TextTemplateListActivity$3;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity$3;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    const v8, 0x7f0a02e1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 679
    :goto_1
    return-void

    .line 677
    :cond_2
    iget-object v6, p0, Lcom/android/mms/template/TextTemplateListActivity$3;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity$3;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    const v8, 0x7f0a0389

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
