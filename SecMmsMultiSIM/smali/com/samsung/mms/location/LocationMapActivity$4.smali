.class Lcom/samsung/mms/location/LocationMapActivity$4;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/location/LocationMapActivity;->showSearchSelectionPopUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/LocationMapActivity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$4;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1110
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1111
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1112
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$4;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mSearchMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$800(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$4;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mSearchMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$800(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1114
    const/4 v0, 0x1

    .line 1117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
