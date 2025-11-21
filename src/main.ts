import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';
import { ValidationPipe } from '@nestjs/common';
import { PrismaExceptionFilter } from './filters/prisma-exception.filter';
import { join } from 'path';
import { NestExpressApplication } from '@nestjs/platform-express';
import * as dotenv from 'dotenv';

dotenv.config();
async function bootstrap() {
  BigInt.prototype.toJSON = function () {
    return this.toString();
  };

<<<<<<< HEAD
  const app = await NestFactory.create(AppModule);

  app.enableCors();
  
  app.useGlobalPipes(
    new ValidationPipe({
      transform: true, // ✅ tự động ép kiểu theo DTO
    }),
  );

  app.enableCors({
    origin: 'http://localhost:5173', // FE domain
    credentials: true, // cho phép gửi cookie/token dạng credential
  });

=======
  const app = await NestFactory.create<NestExpressApplication>(AppModule);

  app.enableCors({
    origin: 'http://localhost:5173',
    credentials: true,
  });

  app.useGlobalPipes(new ValidationPipe({ transform: true }));
>>>>>>> e44d60a (phan login/register/profile)
  app.useGlobalFilters(new PrismaExceptionFilter());

  // Cho phép truy cập ảnh tĩnh
  app.useStaticAssets(join(process.cwd(), 'uploads'), {
    prefix: '/uploads/',
  });

  const config = new DocumentBuilder()
    .setTitle('Travoloke API')
    .setDescription('The Travoloke API description')
    .setVersion('0.1')
    .build();

  const document = SwaggerModule.createDocument(app, config);
  SwaggerModule.setup('api', app, document);

  await app.listen(process.env.PORT ?? 3000);
}
bootstrap();
