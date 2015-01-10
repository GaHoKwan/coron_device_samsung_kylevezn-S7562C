.class Lcom/android/mms/spam/ManageSpamMessages$12;
.super Ljava/lang/Object;
.source "ManageSpamMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/ManageSpamMessages;->showProgressDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/ManageSpamMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/ManageSpamMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/android/mms/spam/ManageSpamMessages$12;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "paramDialogInterface"
    .parameter "paramInt"
    .parameter "paramKeyEvent"

    .prologue
    .line 1238
    const/4 v0, 0x1

    return v0
.end method
