.class Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter$1;
.super Ljava/lang/Object;
.source "ConversationListRestore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

.field final synthetic val$addr:Ljava/lang/String;

.field final synthetic val$convItem:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;Landroid/widget/CheckBox;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter$1;->this$1:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    iput-object p2, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter$1;->val$convItem:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter$1;->val$addr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter$1;->val$convItem:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter$1;->this$1:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    iget-object v0, v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$700(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter$1;->val$addr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter$1;->this$1:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    iget-object v0, v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$700(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter$1;->this$1:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 309
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter$1;->this$1:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    iget-object v0, v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$200(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 313
    :goto_1
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter$1;->this$1:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    iget-object v0, v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #calls: Lcom/samsung/mms/ui/ConversationListRestore;->updateCheckedMsgCount()V
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$800(Lcom/samsung/mms/ui/ConversationListRestore;)V

    .line 314
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter$1;->this$1:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    iget-object v0, v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$700(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter$1;->val$addr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter$1;->this$1:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    iget-object v0, v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$200(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1
.end method
