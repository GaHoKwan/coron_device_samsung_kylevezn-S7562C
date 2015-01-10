.class Lcom/android/contacts/util/NoGlobalSearchAlertDialog$MyOnKeyListener;
.super Ljava/lang/Object;
.source "NoGlobalSearchAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/NoGlobalSearchAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/util/NoGlobalSearchAlertDialog;


# direct methods
.method private constructor <init>(Lcom/android/contacts/util/NoGlobalSearchAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/contacts/util/NoGlobalSearchAlertDialog$MyOnKeyListener;->this$0:Lcom/android/contacts/util/NoGlobalSearchAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/util/NoGlobalSearchAlertDialog;Lcom/android/contacts/util/NoGlobalSearchAlertDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/contacts/util/NoGlobalSearchAlertDialog$MyOnKeyListener;-><init>(Lcom/android/contacts/util/NoGlobalSearchAlertDialog;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 34
    const/16 v0, 0x54

    if-eq p2, v0, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_1

    .line 35
    :cond_0
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
