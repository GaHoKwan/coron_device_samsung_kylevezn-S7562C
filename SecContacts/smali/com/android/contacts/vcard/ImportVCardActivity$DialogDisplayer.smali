.class Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogDisplayer"
.end annotation


# instance fields
.field private final mResId:I

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V
    .locals 0
    .parameter
    .parameter "resId"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->mResId:I

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "errorMessage"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const v0, 0x7f09000d

    iput v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->mResId:I

    .line 192
    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$002(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->mResId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 199
    :cond_0
    return-void
.end method
