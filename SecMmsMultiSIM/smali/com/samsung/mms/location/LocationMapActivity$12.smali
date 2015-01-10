.class Lcom/samsung/mms/location/LocationMapActivity$12;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Lcom/samsung/mms/location/OnSearchEditorBackAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/LocationMapActivity;
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
    .line 1903
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$12;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackAction()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1907
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity$12;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I
    invoke-static {v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$1300(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1910
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$12;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->isHideSoftKeyboard()Z
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$2700(Lcom/samsung/mms/location/LocationMapActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1911
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$12;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V
    invoke-static {v2, v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$1400(Lcom/samsung/mms/location/LocationMapActivity;I)V

    .line 1922
    :cond_0
    :goto_0
    return v1

    .line 1915
    :cond_1
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity$12;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I
    invoke-static {v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$1300(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 1916
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$12;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1917
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$12;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$2300(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/SearchEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move v1, v2

    .line 1919
    goto :goto_0

    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    move v1, v2

    .line 1922
    goto :goto_0
.end method
