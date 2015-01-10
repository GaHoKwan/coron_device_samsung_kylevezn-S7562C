.class public interface abstract Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RcsContacts;
.super Ljava/lang/Object;
.source "FeatureTagGrupper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RcsContacts"
.end annotation


# static fields
.field public static final BLOCKED_URI:Landroid/net/Uri;

.field public static final BUDDIES_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    const-string v0, "content://com.samsung.rcs.rcscontacts/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RcsContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 225
    const-string v0, "content://com.samsung.rcs.rcscontacts/buddies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RcsContacts;->BUDDIES_URI:Landroid/net/Uri;

    .line 226
    const-string v0, "content://com.samsung.rcs.rcscontacts/blocked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RcsContacts;->BLOCKED_URI:Landroid/net/Uri;

    return-void
.end method
