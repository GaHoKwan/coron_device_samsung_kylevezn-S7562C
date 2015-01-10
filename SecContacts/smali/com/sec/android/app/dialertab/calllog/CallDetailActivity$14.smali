.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$14;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 2
    .parameter "arg0"
    .parameter "isChecked"

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$14;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const-string v1, "MotionDialogOnOff"

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->setCheckedOnOff(Ljava/lang/String;Z)V

    .line 2959
    return-void
.end method
