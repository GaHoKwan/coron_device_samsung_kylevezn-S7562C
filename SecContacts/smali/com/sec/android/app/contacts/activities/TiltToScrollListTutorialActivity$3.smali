.class Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$3;
.super Ljava/lang/Object;
.source "TiltToScrollListTutorialActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;

    #calls: Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->stopAnimation()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->access$100(Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;)V

    .line 478
    return-void
.end method
