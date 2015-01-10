.class Lcom/samsung/mms/location/LocationMapActivity$6;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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
    .line 1465
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$6;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 1468
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$6;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$900(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1469
    .local v0, prefEditor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x1

    .line 1471
    .local v1, searchType:I
    packed-switch p2, :pswitch_data_0

    .line 1481
    :goto_0
    const-string v2, "search_type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1482
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1483
    return-void

    .line 1474
    :pswitch_0
    const/4 v1, 0x0

    .line 1475
    goto :goto_0

    .line 1477
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1471
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e011b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
