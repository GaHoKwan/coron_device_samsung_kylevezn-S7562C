.class Lcom/android/mms/ui/ManageSimMessages$1;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$1;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "arg"

    .prologue
    const/16 v1, 0x8

    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$1;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mEmptyMessageLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$000(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$1;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mEmptyMessageLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$000(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$1;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$1;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$1;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->seletAllLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$1;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->seletAllLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :cond_2
    const-string v0, "SIM1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 182
    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "setOnTabChangedListener SIM1: "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$1;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$300(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "SIM1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$1;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->init()V
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$400(Lcom/android/mms/ui/ManageSimMessages;)V

    .line 192
    :cond_3
    :goto_0
    return-void

    .line 186
    :cond_4
    const-string v0, "SIM2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "setOnTabChangedListener SIM2: "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$1;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$300(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "SIM2"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$1;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->init2()V
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$500(Lcom/android/mms/ui/ManageSimMessages;)V

    goto :goto_0
.end method
