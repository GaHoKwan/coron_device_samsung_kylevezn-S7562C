.class Lcom/samsung/mms/location/LocationMapActivity$3;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1092
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1094
    packed-switch p2, :pswitch_data_0

    .line 1106
    :goto_0
    return-void

    .line 1096
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    sget-object v1, Lcom/samsung/mms/location/LocationMapActivity$searchOption;->Address:Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    #setter for: Lcom/samsung/mms/location/LocationMapActivity;->mSearchSelected:Lcom/samsung/mms/location/LocationMapActivity$searchOption;
    invoke-static {v0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$602(Lcom/samsung/mms/location/LocationMapActivity;Lcom/samsung/mms/location/LocationMapActivity$searchOption;)Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    .line 1097
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$700(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const v2, 0x7f0a0419

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1098
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 1101
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    sget-object v1, Lcom/samsung/mms/location/LocationMapActivity$searchOption;->POI:Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    #setter for: Lcom/samsung/mms/location/LocationMapActivity;->mSearchSelected:Lcom/samsung/mms/location/LocationMapActivity$searchOption;
    invoke-static {v0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$602(Lcom/samsung/mms/location/LocationMapActivity;Lcom/samsung/mms/location/LocationMapActivity$searchOption;)Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    .line 1102
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$700(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const v2, 0x7f0a0418

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1103
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 1094
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
