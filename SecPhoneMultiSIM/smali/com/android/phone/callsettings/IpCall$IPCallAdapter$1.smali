.class Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 988
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/16 v3, 0x64

    .line 992
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in setOnItemLongClickListener = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

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

    .line 993
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$200(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 994
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->val$position:I

    #setter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$1302(Lcom/android/phone/callsettings/IpCall;I)I

    .line 995
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const/4 v1, 0x4

    #setter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$202(Lcom/android/phone/callsettings/IpCall;I)I

    .line 996
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v0, v3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->removeDialog(I)V

    .line 997
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v0, v3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    .line 998
    const/4 v0, 0x1

    .line 1000
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
