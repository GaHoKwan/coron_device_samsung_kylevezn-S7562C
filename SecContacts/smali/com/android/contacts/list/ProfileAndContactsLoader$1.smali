.class Lcom/android/contacts/list/ProfileAndContactsLoader$1;
.super Landroid/database/MergeCursor;
.source "ProfileAndContactsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ProfileAndContactsLoader;->loadInBackground()Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ProfileAndContactsLoader;

.field final synthetic val$contactsCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ProfileAndContactsLoader;[Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/contacts/list/ProfileAndContactsLoader$1;->this$0:Lcom/android/contacts/list/ProfileAndContactsLoader;

    iput-object p3, p0, Lcom/android/contacts/list/ProfileAndContactsLoader$1;->val$contactsCursor:Landroid/database/Cursor;

    invoke-direct {p0, p2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v2, p0, Lcom/android/contacts/list/ProfileAndContactsLoader$1;->val$contactsCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 79
    :goto_0
    return-object v1

    .line 71
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/list/ProfileAndContactsLoader$1;->val$contactsCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Landroid/database/StaleDataException;
    goto :goto_0
.end method
