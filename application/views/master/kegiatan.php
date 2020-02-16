     <!-- Begin Page Content -->
     <div class="container-fluid">

         <!-- Page Heading -->
         <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>



         <div class="row">
             <div class="col-lg-15">
                 <?= form_error('menu', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                 <?= $this->session->flashdata('message'); ?>
                 <a href="" class="btn btn-primary mb-3" data-toggle="modal" data-target="#newKegiatanModal">Tambah Kegiatan</a>

                 <table class="table fa-fw table-hover">
                     <thead>
                         <tr>
                             <th scope="col">#</th>
                             <th scope="col">ID Kegiatan</th>
                             <th scope="col">ID Urusan</th>
                             <th scope="col">ID SKPD</th>
                             <th scope="col">ID Bidang</th>
                             <th scope="col">ID Program</th>
                             <th scope="col">Kode Kegiatan</th>
                             <th scope="col">Nama Kegiatan</th>
                         </tr>
                     </thead>
                     <tbody>
                         <?php $i = 1; ?>
                         <?php foreach ($kegiatanmaster as $m) : ?>
                             <tr>
                                 <th scope="row"><?= $i; ?></th>
                                 <td><?= $m['id_kegiatan']; ?></td>
                                 <td><?= $m['id_urusan']; ?></td>
                                 <td><?= $m['id_skpd']; ?></td>
                                 <td><?= $m['id_bidang']; ?></td>
                                 <td><?= $m['id_program']; ?></td>
                                 <td><?= $m['kode_kegiatan']; ?></td>
                                 <td style="text-align: left"><?= $m['nama_kegiatan']; ?></td>
                                 <td>
                                     <a href="" class="badge badge-success">edit</a>
                                     <a href="" class="badge badge-danger">delete</a>
                                 </td>
                             </tr>
                             <?php $i++; ?>
                         <?php endforeach; ?>
                     </tbody>
                 </table>
             </div>


         </div>

     </div>
     <!-- /.container-fluid -->

     </div>
     <!-- End of Main Content -->

     <!-- Modal tambah -->
     <div class="modal fade" id="newKegiatanModal" tabindex="-1" role="dialog" aria-labelledby="newKegiatanModalLabel" aria-hidden="true">
         <div class="modal-dialog" role="document">
             <div class="modal-content">
                 <div class="modal-header">
                     <h5 class="modal-title" id="newKegiatanModalLabel">Tambah Kegiatan</h5>
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                         <span aria-hidden="true">&times;</span>
                     </button>
                 </div>
                 <form action="<?= base_url('master/kegiatan'); ?>" method="post">
                     <div class="modal-body">
                         <div class="form-group">
                             <input type="text" class="form-control" id="id_kegiatan" name="id_kegiatan" placeholder="ID Kegiatan">
                         </div>
                         <div class="form-group">
                             <input type="text" class="form-control" id="id_urusan" name="id_urusan" placeholder="ID Urusan">
                         </div>
                         <div class="form-group">
                             <input type="text" class="form-control" id="id_skpd" name="id_skpd" placeholder="ID SKPD">
                         </div>
                         <div class="form-group">
                             <input type="text" class="form-control" id="id_bidang" name="id_bidang" placeholder="ID Bidang">
                         </div>
                         <div class="form-group">
                             <input type="text" class="form-control" id="id_program" name="id_program" placeholder="ID Program">
                         </div>
                         <div class="form-group">
                             <input type="text" class="form-control" id="kode_program" name="kode_program" placeholder="Kode Program">
                         </div>
                         <div class="form-group">
                             <input type="text" class="form-control" id="nama_kegiatan" name="nama_kegiatan" placeholder="Nama Kegiatan">
                         </div>
                     </div>
                     <div class="modal-footer">
                         <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                         <button type="submit" class="btn btn-primary">Add</button>
                     </div>
                 </form>
             </div>
         </div>
     </div>