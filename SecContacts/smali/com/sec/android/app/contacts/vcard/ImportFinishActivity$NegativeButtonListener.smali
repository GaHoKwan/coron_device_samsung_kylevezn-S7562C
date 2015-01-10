.class Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$NegativeButtonListener;
.super Ljava/lang/Object;
.source "ImportFinishActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NegativeButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$NegativeButtonListener;->this$0:Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$NegativeButtonListener;-><init>(Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$NegativeButtonListener;->this$0:Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 64
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$NegativeButtonListener;->this$0:Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 60
    return-void
.end method
