.class Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1007
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in setOnItemClickListener = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$200(Lcom/android/phone/callsettings/IpCall;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 1008
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$200(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1009
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->val$position:I

    #setter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$1302(Lcom/android/phone/callsettings/IpCall;I)I

    .line 1010
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$1300(Lcom/android/phone/callsettings/IpCall;)I

    move-result v1

    #setter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItemForEdit:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$1202(Lcom/android/phone/callsettings/IpCall;I)I

    .line 1011
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const/4 v1, 0x4

    #setter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$202(Lcom/android/phone/callsettings/IpCall;I)I

    .line 1012
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$1300(Lcom/android/phone/callsettings/IpCall;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/IpCall;->access$1402(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)Ljava/lang/String;

    .line 1013
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTempEditString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$1400(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 1015
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1016
    const-string v0, "SELECTED_ITEM"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$1400(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const-string v0, "UPDATE_MODE"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1018
    const-string v0, "IP_CALL_LIST_SIZE"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1020
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$1400(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$700(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    const-string v0, "IS_DEFAULT"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1023
    :cond_0
    const v5, 0x7f0e0452

    .line 1024
    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1025
    const v5, 0x7f0e073e

    .line 1027
    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const-class v2, Lcom/android/phone/callsettings/EditIpCallScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 1029
    :cond_2
    return-void
.end method