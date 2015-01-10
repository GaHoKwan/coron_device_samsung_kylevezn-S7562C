.class public Lcom/android/phone/CallLogAsync$AddCallArgs;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddCallArgs"
.end annotation


# instance fields
.field public final SIMid:I

.field public final callType:I

.field public final ci:Lcom/android/internal/telephony/CallerInfo;

.field public final context:Landroid/content/Context;

.field public final dbUri:Landroid/net/Uri;

.field public final dormantset:I

.field public final durationInSec:I

.field public final number:Ljava/lang/String;

.field public final presentation:I

.field public final remindme:I

.field public final sharedFilePath:Ljava/lang/String;

.field public final simnum:I

.field public final timestamp:J

.field public values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V
    .locals 4
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 105
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 106
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 107
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 108
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 109
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 110
    iput-object v3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 111
    iput-object v3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 112
    iput-object v3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 113
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->remindme:I

    .line 114
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dormantset:I

    .line 115
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    .line 116
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->SIMid:I

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJII)V
    .locals 4
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "remindme"
    .parameter "dormantset"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 282
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 283
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 284
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 285
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 286
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 287
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 288
    iput-object v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 289
    iput-object v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 290
    iput-object v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 291
    iput p10, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->remindme:I

    .line 292
    iput p11, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dormantset:I

    .line 293
    iput v3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    .line 294
    iput v3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->SIMid:I

    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJILandroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "SIMid"
    .parameter "dbUri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 154
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 155
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 156
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 157
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 158
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 159
    iput p10, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->SIMid:I

    .line 160
    iput-object p11, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 161
    iput-object v3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 162
    iput-object v3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 163
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->remindme:I

    .line 164
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dormantset:I

    .line 165
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJILandroid/net/Uri;II)V
    .locals 2
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "SIMid"
    .parameter "dbUri"
    .parameter "remindme"
    .parameter "dormantset"

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 258
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 259
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 260
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 261
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 262
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 263
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 264
    iput-object p11, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 267
    iput p12, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->remindme:I

    .line 268
    iput p13, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dormantset:I

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    .line 270
    iput p10, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->SIMid:I

    .line 271
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "value"
    .parameter "dbUri"

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 180
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 181
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 182
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 183
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 184
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 185
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 186
    iget-object v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, p10}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 187
    iput-object p11, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 189
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->remindme:I

    .line 190
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dormantset:I

    .line 191
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    .line 192
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->SIMid:I

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 129
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 130
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 131
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 132
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 133
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 134
    iput-object p10, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 135
    iput-object v3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 136
    iput-object v3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 137
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->remindme:I

    .line 138
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dormantset:I

    .line 139
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    .line 140
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->SIMid:I

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"
    .parameter "sharedFilePath"

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 205
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 206
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 207
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 208
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 209
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 210
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 211
    iput-object p10, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 213
    iput-object p11, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 214
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->remindme:I

    .line 215
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dormantset:I

    .line 216
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    .line 217
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->SIMid:I

    .line 218
    return-void
.end method
